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
 Letter  &::=& {\tt a \mid b \mid ... \mid z \mid A \mid B \mid ... \mid Z} ;\\
 Digit  &::=& {\tt 1 \mid 2 \mid 3 \mid 4 \mid 5 \mid 6 \mid 7 \mid 8 \mid 9 \mid 0};\\
 ValidChar  &::=&  Letter   ~\mid~  Digit ;\\
 IdChar &::=& Letter ~|~ \tt \_;\\
 Identifier  &::=&  IdChar  \{ IdChar  ~ \mid~  Digit  \}^*.
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

## 2. Types, Values, and Variables
The types of the Apricot  language are divided into two categories:
mathematic types and reference types. 

$$
\begin{align*}
 Type ::= & PrimitiveType \mid MathematicType  \\
          & \mid  ReferenceType ;\\
\end{align*}
$$


### Mathematic Types and Values
Primitive Type is the same as mathematicType except that, primitive type variable 
can not be shared and has the feature of ``call-by-value" during method calls. 
Call-by-value requires the evaluation of the arguments before passing them to the definition of the method. Another style is call-by-name which passing the arguments directly to the definition.
For mathematic and reference types we take the call-by-name style argument passing for method invocation. In addition, there is a difference between mathematic type and reference type. Reference type variables can refer to another object with the same type by the assignment statement. But, the assignment can only change the mathematical value of the object for mathematic type variables. It means that, when a mathematic type variable refers to a methematic type object for the first time, the variable will hold this object all the time and only the mathematical value of this object can be updated.

$$
\begin{eqnarray*}
 MathematicType  &::=&   {\tt Int} \mid {\tt Real};\\
\end{eqnarray*}
$$

Accordingly, the primitive type is defined by:

$$
\begin{eqnarray*}
 PrimitiveType &::=&  {\tt int} \mid {\tt real} \mid {\tt boolean} \mid {\tt String};\\
\end{eqnarray*}
$$


* Mathematic types : *Boolean* type and the numeric types. The *Boolean*
type represents a logical quantity in the literals set $\{ {\tt true}, {\tt false}\}$.
The numeric types are the integer type *Integer*, and the real number type
*Real*;
* Reference types : class types, interface types, and array types.

An object is a dynamically created instance of a class type or a dynamically 
created array. The values of a reference type are references to objects.

### Reference Types and Values

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


### Variables

A variable is a physical quantity name in physical world or a storage location in the memory of computer, and has an associated type that is either a mathematic type or a reference type.

The value of a variable  is changed by an assignment or according to the differential equations defined in *Dynamic* classes.

For all types, the default value of any type variable is the special value ${\tt null}$.

#### Variables of Mathematic Type
Mathematic type variables are always hold a mathematic value of that exact mathematic type.


#### Variables of Reference Type
A variable of a reference type ${\tt R}$ can hold a null reference, a reference to an instance of class *C*, any class that is a subclass of *C*, any class that is a implementation of interface *C* or any array type.

## 3. Mathematical Operations

### Arithmetic Operators
For $x,y \in \mathcal{R}$, the following arithmetic operators are defined on Real numbers ($\mathcal{R}$):

*  $x + y$,  binary plus, addition;
*  $x - y$,  binary minus,subtraction;
*  $x * y$,  binary multiple, multiplication;
*  $x / y$,  binary divide, division;
*  $+x$, unary plus, it denotes the identity operation on $x$, thus, $x == +x$ with
 respect to the evaluation;
*  $-x$,  unary minus, inverse operation on $x$, thus, $(-x) + x == 0$.



### Boolean Operators
Standard boolean operators are defined for all *Boolean* type values $x, y$:

* $==$, equality;

* $!=$,  inequality;

* $!$, logical complement;

* ${\tt in}$,  belong to interval, the result value of ($x~ {\tt in}~[a,b]$) is ${\tt true}$ iff $a \leq x \leq b$;

* ${\tt and}$, the result value of ($x~{\tt and}~y$) is ${\tt true}$ if both operand values are ${\tt true}$;

* ${\tt xor}$, the result value of ($x~{\tt xor}~y$) is ${\tt true}$ if the operand 
values are different;

* ${\tt or}$, the result value of ($x~ {\tt or} ~y$) is ${\tt true}$ if one of the operand values is ${\tt true}$.


### Numeric Comparisons
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


### Mathematical Functions
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
{% include JB/setup %}