---
layout: page
comments: false
title: Apricot 
tagline: An object-oriented modeling language for hybrid systems
---
##XtextApricot Update Site for Eclipse##
XtextApricot is an Eclipse plugin for Apricot language, 
you can install the plugin in Eclipse using this URL (as below). 
For more details, see   <a href="#Install the Plugin">'Install the Plugin'</a>.

    http://xtextapricot.apricotresearch.com/

or, you can use this URL:
	
    http://www.fanghuixing.com/XtextApricot/

XtextApricot is developed on <a href="http://www.eclipse.org">Eclipse</a> (Version: Kepler Release,
Build id: 20130614-0229) with <a href="http://www.eclipse.org/Xtext/">Xtext</a> 2.4.3. You can get the source code of XtextApricot from <a href="https://github.com/fanghuixing/XtextApricot/tree/gh-pages/source">here</a>.

----------

# User Guide Contents

1. <a href="#Install the Plugin">Install the Plugin</a>

2. <a href="#Create New Apricot Project">Create New Apricot Project</a>


3. <a href="syntax/main.html">Apricot Syntax</a>

4. <a href="cases/subway/subwaycontrolsystems.html">Case Study -- Modeling Subway Control System in Apricot</a>



----------

<br>

## <a name="Install the Plugin"> 1. Install the Plugin </a> 

In the 'Help' menu of eclipse, select 'Install New Software...'

![Install New Software](  http://zl.hwpan.com/u53460366/assets/figs/InstallNewSoftware.jpg)

<img src="{{ ASSET_PATH }}/figs/InstallNewSoftware.jpg" alt="Install New Software"/>

The 'Install' window will appear, and click 'Add' to add a new Repository.

![Install New Software](assets/figs/add.jpg)


Type the name of the repository (we use 'Apricot' here), and the location 'http://www.fanghuixing.com/XtextApricot/' (or 'http://xtextapricot.apricotresearch.com/'), then click 'OK'

![Install New Software](assets/figs/AddRepository.jpg)

*note: if you want to add the repository by an 'Archive', you can download the update file from* 
	
    http://xtextapricot.apricotresearch.com/download/XtextApricot.zip 

*Download XtextApricot.zip, put it in a local folder, and then click 'Archive...' in the 'Add Repository' window, select the zip file you downloaded, and so on.*


You will see the available software, the name and the version information, select  all as the below, and click 'Next':

![Install New Software](assets/figs/availiable.jpg)

It will calculate the dependencies and requirements (about 5 minutes), at last, the 'Install Details' would come up, now click 'Next':

![Install New Software](assets/figs/install.jpg)


Then, accept the license, click 'Finish':

![Install New Software](assets/figs/acceptlicense.jpg)

It will install the plugin,

<div style="text-align:center" markdown="1">


![Install New Software](assets/figs/installing.jpg) 


</div>





If you see a security warning, just click 'OK'.

<div style="text-align:center" markdown="1">

![Install New Software](assets/figs/warning.jpg)

</div>

After the installation, you have to restart Eclipse. 

<div style="text-align:center" markdown="1">

![Install New Software](assets/figs/restart.jpg)

</div>

<br>

***

## <a name="Create New Apricot Project">2. Create New Apricot Project</a>
At first, select 'File'->'New'->'Project':

<div style="text-align:center" markdown="1">

![Create New Project](assets/figs/newproject.jpg)

</div>

Select 'Apricot Project', then click 'Next':

<div style="text-align:center" markdown="1">

![Create New Project](assets/figs/selectapricot.jpg)

</div>

Set the project name, then click 'Finish':

<div style="text-align:center" markdown="1">

![Create New Project](assets/figs/projectname.jpg)

</div>

Now, we get the new Apricot project, the interfaces are listed in the package 'com.fofo.apricot', the example model class is in the package 'model'.

---



As follow, the model code view for our subway control system in Eclipse with XtextApricot installed: 

![Create New Project](assets/figs/projectview.jpg)


***
<center>    
<img src="assets/figs/apricot.jpg" alt="Apricot"  style="width: 100px;"/>
</center>
***

<img src="http://www.fanghuixing.com/assets/images/name.jpg" style="FLOAT: right; MARGIN-BOTTOM: 0px; MARGIN-right: 5px;height: 30px;width: 82px;">

Author: Huixing Fang 

fang.huixing@gmail.com

***
	
{% include JB/setup %}



