---
layout: page
comments: true
title: Apricot Syntax
description: "Apricot Syntax"
---
## 1. Identifiers
An *identifier* is an unlimited-length (but the length is greater than one) sequence of letters and digits, but not a Keyword:

$$
\begin{eqnarray*}
 Letter  &::=& {\tt a .. z \mid A .. Z} ;\\
 Digit  &::=& {\tt 0 .. 9};\\
 ValidChar  &::=&  Letter   ~\mid~  Digit ;\\
 Identifier  &::=& {\tt \verb!^!} ? (~Letter~|~{\tt \_}~) (~ValidChar~|~{\tt \_}~)*;.
\end{eqnarray*}
$$

In which the letter is defied as the character in the set 
$\\{$  ${\tt a}$, 
${\tt b}$, ${\tt c}$, ${\tt d}$, 
${\tt e}$, ${\tt f}$, ${\tt g}$, ${\tt h}$, 
${\tt i}$, ${\tt j}$, ${\tt k}$, ${\tt l}$, ${\tt m}$, 
${\tt n}$, ${\tt o}$, ${\tt p}$, ${\tt q}$, ${\tt r}$, 
${\tt s}$, ${\tt t}$, ${\tt u}$, ${\tt v}$, ${\tt w}$, 
${\tt x}$, ${\tt y}$, ${\tt z}$, ${\tt A}$, ${\tt B}$, 
${\tt C}$, ${\tt D}$, ${\tt E}$, ${\tt F}$, ${\tt G}$, 
${\tt H}$, ${\tt I}$, ${\tt J}$, ${\tt K}$, ${\tt L}$, 
${\tt M}$, ${\tt N}$, ${\tt O}$, ${\tt P}$, ${\tt Q}$, 
${\tt R}$, ${\tt S}$, ${\tt T}$, ${\tt U}$, ${\tt V}$, 
${\tt W}$, ${\tt X}$, ${\tt Y}$, ${\tt Z}$
$\\}$.

***

## 2. Types, Values, and Variables
The types of the Apricot  language are divided into three categories: primitive types,
mathematic types and reference types. 

$$
\begin{align*}
 Type ::= & PrimitiveType \mid MathematicType  \\
          & \mid  ReferenceType ;\\
\end{align*}
$$

### 2.1 Primitive Types

The primitive type is defined by:

$$
\begin{eqnarray*}
 PrimitiveType &::=&  {\tt int} \mid {\tt real} \mid {\tt boolean} \mid {\tt String};\\
\end{eqnarray*}
$$

The Boolean type represents a logical quantity in the literals set $\\{ {\tt true}, {\tt false}\\}$.

### 2.2 Mathematic Types and Values
Primitive type variable 
can not be shared and has the feature of ``call-by-value" during method calls. 
Call-by-value requires the evaluation of the arguments before passing them to the definition of the method. Another style is call-by-name which passing the arguments directly to the definition.
For mathematic and reference types we take the call-by-name style argument passing for method invocation. In addition, there is a difference between mathematic type and reference type. Reference type variables can refer to another object with the same type by the assignment statement. But, the assignment can only change the mathematical value of the object for mathematic type variables. It means that, when a mathematic type variable refers to a methematic type object for the first time, the variable will hold this object all the time and only the mathematical value of this object can be updated.

$$
\begin{eqnarray*}
 MathematicType  &::=&   {\tt Int} \mid {\tt Real};\\
\end{eqnarray*}
$$

* Mathematic types : Numeric types. 
The numeric types are the integer type *Int*, and the real number type
*Real*;
* Reference types : class types, interface types, and array types.

An object is a dynamically created instance of a class type or a dynamically 
created array. The values of a reference type are references to objects.

### 2.3 Reference Types and Values

There are four kinds of reference types: class types, interface types, type variables.

$$
\begin{align*}
 ReferenceType  ::=&  ClassType  \mid  InterfaceType   \\
                   &  \mid  ArrayType \mid IntervalType ;\\
 ClassType  ::=&  Identifier ;\\
 InterfaceType  ::=&  Identifier  \mid {\tt System} \mid {\tt Plant} \\
& \mid  {\tt Controller}\\
& \mid {\tt Dynamic} \mid {\tt Assignment} \\
& \mid {\tt ParallelAssignment} \\
& \mid {\tt SequentialAssignment} 
\end{align*}
$$


### 2.4 Variables

A variable is a physical quantity name in physical world or a storage location in the memory of computer, and has an associated type that is either a mathematic type or a reference type.

The value of a variable  is changed by an assignment or according to the differential equations defined in *Dynamic* classes.

For all types, the default value of any type variable is the special value ${\tt null}$.

#### Variables of Mathematic Type
Mathematic type variables are always hold a mathematic value of that exact mathematic type.


#### Variables of Reference Type
A variable of a reference type ${\tt R}$ can hold a null reference, a reference to an instance of class *C*, any class that is a subclass of *C*, any class that is a implementation of interface *C* or any array type.

***

## 3. Mathematical Operations

### 3.1 Arithmetic Operators
For $x,y \in \mathcal{R}$, the following arithmetic operators are defined on Real numbers ($\mathcal{R}$):

*  $x + y$,  binary plus, addition;
*  $x - y$,  binary minus,subtraction;
*  $x * y$,  binary multiple, multiplication;
*  $x / y$,  binary divide, division;
*  $+x$, unary plus, it denotes the identity operation on $x$, thus, $x == +x$ with
 respect to the evaluation;
*  $-x$,  unary minus, inverse operation on $x$, thus, $(-x) + x == 0$.



### 3.2 Boolean Operators
Standard boolean operators are defined for all *Boolean* type values $x, y$:

* $==$, equality;

* $!=$,  inequality;

* $!$, logical complement;

* ${\tt in}$,  belong to interval, the result value of ($x~ {\tt in}~[a,b]$) is ${\tt true}$ iff $a \leq x \leq b$;

* ${\tt and}$, the result value of ($x~{\tt and}~y$) is ${\tt true}$ if both operand values are ${\tt true}$;

* ${\tt xor}$, the result value of ($x~{\tt xor}~y$) is ${\tt true}$ if the operand 
values are different;

* ${\tt or}$, the result value of ($x~ {\tt or} ~y$) is ${\tt true}$ if one of the operand values is ${\tt true}$.


### 3.3 Numeric Comparisons
 Standard comparison operations are defined for all Real numbers ($\mathcal{R}$), which result in a value of type *Boolean*:

* $==$,   equality;
* $!=$,   inequality;
* $<$,   less than;
* $<=$,   less than or equal to;
* $>$,   greater than;
* $>=$,   greater than or equal to.




Special Symbol numbers:

* $Inf$ is stands for $\infty$, which is equal to itself and greater than any other number;
* $-Inf$ is stands for $-\infty$, which is equal to itself and less then any other number;


### 3.4 Mathematical Functions
We provides a comprehensive collection of mathematical functions and operators. These mathematical operations are defined on Real numbers ($\mathcal{R}$).

* $dot(x,n)$, n-th order derivative of $x$ over time ($t$), i.e. $dot(x,n)=\frac{d^n x}{dt^n}$.
* $dot(x,y,n)$,n-th order derivative of $x$ over $y$, i.e. $dot(x,y,n)=\frac{d^n x}{d y^n}$.
* Standard trigonometric functions: $sin$,    $cos$,    $tan$,    $cot$,    $sec$ and    $csc$.
* $round(x)$, round $x$ to the nearest integer, omitting decimal fractions smaller than $0.5$, e.g. $round(2.5)=3$, $round(0.4)=0$.
* $floor(x)$, round $x$ towards $-Inf$, e.g. $round(2.5)=2$.
* $ceil(x)$, round $x$ towards $+Inf$, e.g. $ceil(2.5)=3$.
* $div(x,y)$, truncated division, and quotient rounded towards zero.
* $fld(x,y)$, floored division, quotient rounded towards $-Inf$.
* $rem(x,y)$, remainder, satisfies $x = div(x,y)*y + rem(x,y)$, implying that sign of $rem(x,y)$ matches $x$.
* $mod(x,y)$, modulus; satisfies $x = fld(x,y)*y + mod(x,y)$, implying that sign of $ mod(x,y)$ matches $y$.
* $$gcd(x_1,x_2,...,x_n)$$, greatest common divisor of $$x_1, x_2, ..., x_n$$ with sign matching $x_1$.
* $$lcm(x_1,x_2,...,x_n)$$, least common multiple of $$x_1, x_2, ..., x_n$$ with sign matching $x_1$.
* $abs(x)$, a positive value with the magnitude of $x$.
* $sign(x)$, indicates the sign of $x$, returning $-1$, $0$, or $+1$.
* $sqrt(x)$, the square root of $x$, i.e. $\sqrt[2]{x}$.
* $root(x,b)$, the b-th root of $x$, i.e. $\sqrt[b]{x}$.
* $hypot(x,y)$, accurate $sqrt(x^2 + y^2)$ for all values of $x$ and $y$.
* $pow(x,y)$, $x$ raised to the exponent $y$, i.e. $x^y$.
* $exp(x)$, the natural exponential function at $x$, i.e. $e^x$.
* $log(x)$, the natural logarithm of $x$, i.e. $\log(x)$ or $\ln(x)$.
* $log(b,x)$, the base b logarithm of $x$, i.e. $\log_b(x)$.
* $erf(x)$, the error function (Gauss error function) at $x$, i.e. $erf(x)=\frac{2}{\sqrt{\pi}}\int_0^x{e^{t^2}dt}$.
* $gamma(x)$, the gamma function at $x$.
* $max(x_1,...,x_n)$, the maximum value in the set $\\{x_i \mid 1 \leq i \leq n \\}$.
* $min(x_1,...,x_n)$, the minimum value in the set $\\{x_i \mid 1 \leq i \leq n \\}$.
* $pause(x)$, make a pause for $x$ seconds.
* $size(x)$, the size of $x$ ($x$ is an array).  

***


## 4. Expressions

### 4.1 Boolean Expressions
The boolean expressions are used as conditions when we write if-statements, for-loops, while-loops, invariant blocks, condition blocks, etc. 
In Apricot, we have two boolean constants, $$\tt true$$  and 	$$\tt false$$. 

$$
\begin{align*}
BExpr ::= {\tt true} ~|~ {\tt false} ~|~ Exp ~\circ~ Exp
\end{align*}
$$

where, $\circ$ is a relation operator, and $\circ \in \\{\tt ==, <, >, <=, >=, !=, in \\}$. '${\tt ==}$' is used for equality judgement, while `${\tt !=}$' is for inequality. `$${\tt <}$$' is used to specify the LHS is less than RHS, `$${\tt >}$$', `$${\tt <=}$$', and `$${\tt <=}$$' have similar meaning.
The last one, `$${\tt in}$$' is employed in two scenarios. 

$$
\begin{align*}
Exp ~{\tt in}~ & ~[~Exp_1,~ Exp_2~]\\
Exp ~{\tt in}~ & ~Exp
\end{align*}
$$


The first one is for interval checking. Expressions $Exp_1$  and $Exp_2$ are the left and right endpoints  of the closed interval `$[~Exp_1,~ Exp_2~]$', respectively.
For example, let x be a variable,  `$$x ~{\tt ~in~[0,10]}$$' denotes that $$x \in [0,10]$$.
The second one is for checking whether the control of one object (LHS, e.g. plant, controller) is in a specific {\em Dynamic} object (RHS). Let {\tt door} be a plant, {\tt closed} be one of the {\em Dynamic} objects of {\tt door}, if the expression `{\tt Door in closed}' is evaluated to true, 
then the control of {\tt door} is in the {\em Dynamic} object {\tt closed} (thus the door is currently closed).

### 4.2 Continuous Flow Expressions
The continuous behavior in {\apricot} is declared by the general form of differential equations.
The first one is the traditional differential equation that defines the $o$-th derivative of variable $v$  over time. The derivative order $o$ can be any natural number.
The second one defines the $o$-th derivative of $v$ over another continuous variable $v'$.

$$
\begin{align*}
{\tt dot}(v,o) == Exp \\
{\tt dot}(v,v',o) == Exp
\end{align*}
$$


For example, `{\tt dot(x,2)==x+dot(y,1)+2}' is equivalent to the differential equation: $\frac{d^2x}{dt^2}=x+ \frac{dy}{dt} +2$, $t$ is for time.

{% include JB/setup %}