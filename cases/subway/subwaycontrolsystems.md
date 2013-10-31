---
layout: page
comments: true
title: "Subway Control Systems"
description: "Subway Control Systems"
---
We have four trains and four subway stations. The train runs from Station-1 to Station-4, then from Station-4 to Station-1, and so on. Station-1 and Station-4 are the first station and final station, respectively. The train will reach the final station in direction A, and stopped at platform A. After several minutes, it will leave from platform A to platform B. And, its direction will be changed from direction A to direction B, and the train will stop at platform B. Similarly, at the first station, the train will change
the direction from B to A.

The positions of these four stations are:

<div align="center">
<table width="80%" border="1">
<thead>
<tr>
  <th>Station</th>
  <th>Position (m)</th>
</tr>
</thead>
<tbody align="center">
<tr >
  <td>Station-1</td>
  <td>0</td>
</tr>
<tr>
  <td>Station-2</td>
  <td>2284</td>
</tr>
<tr>
  <td>Station-3</td>
  <td>3292</td>
</tr>
<tr>
  <td>Station-4</td>
  <td>9097</td>
</tr>
</tbody>
</table>
</div>

<br>

The subway line is depicted as:

![Subway Line]({{ BASE_PATH }}/assets/figs/sbwl.jpg)


The structure of the model of subway control system:


<div style="text-align:center" markdown="1">

![Model Structure]({{ BASE_PATH }}/assets/figs/systemstructure.png)

</div>

#### The continuous behavior of train:

	package model.train;
	import com.fofo.apricot.Dynamic;
	class TrainBehavior implements Dynamic{

		Real pos;
		Real vel;
		Int dir;	
		real acc;//acceleration
		
		real pos1; 
		real pos2;
		real vel1;
		real vel2;
		
		TrainBehavior(Real pos, Real vel, Int dir){
			
		}
		
		void setAcceleration(real acc){
			this.acc = acc;
		}
		
		void setPosVelBound(real pos1, real pos2, real vel1, real vel2){
			this.pos1 = pos1;
			this.pos2 = pos2;
			this.vel1 = vel1;
			this.vel2 = vel2;
		}
		
		
		void Continuous(){
			dot(pos,1) == dir*vel;
			dot(vel,1) == acc;								
		}
		
		Invariant{
			pos in [pos1,pos2]; // the limitation can be set in an Assignment
			vel in [vel1,vel2];		
		};

	}



#### The class declaration of train:

	package model.train;
	import com.fofo.apricot.*;
	import model.doorsystem.TrainDoorController;
	import model.doorsystem.DoorSystem;  
	import model.train.TrainBehavior;
	import model.Wait;
	import model.utility.Configure;
	import model.utility.Physics;
	class Train implements Plant{		

		// add dynamics and controllers	
		Constant int traindooramount = 3;
		Constant int len = 2; // the length of a door, 2 m.
		Constant int vel = 1; // the velocity of opening a door, 1 m/s.
		real S;// position of station
		
		DoorSystem tds = new DoorSystem(traindooramount, new TrainDoorController(), len, vel);
		Controller trainController;
		
		Real position;
		Real velocity;
		Int direction;
		real DELAY;
		int index;//the index for stations	
		Configure cfg;
		Physics phy;
		private real maxpos;
		
		//Dynamics :
		Wait init = new Wait([0,DELAY]);
		Wait stopAtStation = new Wait([0,Inf]);
		Wait changeDirection = new Wait([0,30]);
		TrainBehavior run = createBaseDynamics(0.5);
		TrainBehavior near = createBaseDynamics(0);
		TrainBehavior stablerun = createBaseDynamics(0);
		TrainBehavior urgent_dec = createBaseDynamic(-1.5);
		TrainBehavior urgent_stop = createBaseDynamics(0);
		TrainBehavior urgent_inc = createBaseDynamics(0.5);
		TrainBehavior urgent_recover = createBaseDynamics(-0.5);
		
		
		void Composition(){
			//from init
			stop()(init,,stopAtStation){
				Condition{
					init.getTime() == DELAY;	
				};
				Discrete{	
					stopAtStation.reset();				
				};
			}
			
			//from stopAtStation
			start()(stopAtStation,,changeDirection){
				Condition{
					(index==0 and direction==-1)
					or
					(index==getStationAmount() and direction==1);
				};
				Discrete{
					changeDirection.reset();	
				};
			}
			
			start()(stopAtStation,,run){
				Condition{
					(index>0 and direction==-1)
					or
					(index<getStationAmount()-1 and direction==1);
				};
				Discrete{
					index = index + direction;
					//S refers to the target station's position
					S = cfg.getStationPosOf(index);
					this.setPosVelBound(run);
				};
			}
			
			//from changeDirection
			stop()(changeDirection,,stopAtStation){
				Condition{
					changeDirection.getTime() == 30;
				};
				Discrete{
					resetDirection();	
					stopAtStation.reset();
				};
			}
			
			
			//from run or stablerun to near
			tau({run, stablerun},,near){
				Condition{
					abs(S-position) <= 500;	
				};
				Discrete{
					near.setAcceleration(
						phy.calAccFromVelAndDis(velocity, abs(S-position))
					);	
				};
			}
			
			tau(run,,stablerun){
				Condition{
					velocity == 20;
				};
				Discrete{
					stablerun.setAcceleration(0);
					this.setPosVelBoundWithParas(stablerun,S,500,20,20);
				};
			}
			
			//from near or urgent_recover
			stop()({near,urgent_recover},,stopAtStation){
				Condition{
					abs(S-position) <= 1;  
					velocity in [0, 0.1];
				};
				Discrete{
					velocity = 0;
					position = S;
					stopAtStation.reset();
				};
			}
						
			urStop(?)( {stablerun, run , near, urgent_inc, urgent_recover}, , urgent_dec){
				Condition{
					true;
				};
				Discrete{
					this.setPosVelBoundWithParas(urgent_dec,S,0,0,20);
				};
			}
			
			Train_Urstopped(urgent_dec,, urgent_stop){
				Condition{
					velocity <= 0.1;
				};
				Discrete{
					velocity = 0;
					this.setPosVelBoundWithParas(urgent_stop, S, 0, 0, 0);
				};			
			}
			
			urStart(?)(urgent_stop,,urgent_inc){
				Condition{
					abs(S-position) <= 800;
				};		
				Discrete{
					maxpos = 0.5*(S+position);
					this.setPosVelBoundWithParas(urgent_stop, maxpos, 0, 0, 20);
				};
			}
			
			urStart(?)(urgent_stop,,run){
				Condition{
					abs(S-position) > 800;
				};		
				Discrete{				
					this.setPosVelBoundWithParas(run, S, 500, 0, 20);
				};
			}
			
			tau(urgent_inc,,urgent_recover){
				Condition{
					position == maxp;
				};		
				Discrete{				
					this.setPosVelBoundWithParas(urgent_recover, S, -1, 0, 20);
				};
			}		
		}
	
		void setPosVelBound(TrainBehavior tb){
			this.setPosVelBoundWithParas(tb, S, 500, 0, 20);
		}
		
		void setPosVelBoundWithParas
			(TrainBehavior tb, real target, real diff, real fromv, real tov){
			if (direction==1){
				tb.setPosVelBound(-Inf,target-diff,fromv,tov);
			}
			else{
				tb.setPosVelBound(target+diff,Inf,fromv,tov);
			}
		}
		
		void resetDirection(){
			this.direction = -1 * this.direction;
		}
		
		void setDelay(real delay){
			this.DELAY = delay;
		}
		
		int getStationAmount(){
			return cfg.getStationAmount();
		}
		
		//create dynamics only with acceleration
		Dynamic createBaseDynamics(real acceleration){
			TrainBehavior 
			dy = new TrainBehavior(this.position, this.velocity, this.direction);
			dy.setAcceleration(acceleration);
			return dy;
		}
		
		//create dynamics with acceleration and boundaries
		Dynamic createDynamics
			(real acceleration, real fromPos, real toPos, real fromVel, real toVel){
			TrainBehavior dy = createBaseDynamics(acceleration);
			dy.setPosVelBound(fromPos,toPos,fromVel,toVel);
			return dy; 
		}
	}

{% include JB/setup %}
