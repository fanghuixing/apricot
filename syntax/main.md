---
layout: page
title: "Apricot Syntax"
description: "Apricot Syntax"
---


<style type="text/css">
body, td {
   font-family: sans-serif;
   background-color: white;
   font-size: 12px;
   margin: 8px;
}

tt, code, pre {
   font-family: 'DejaVu Sans Mono', 'Droid Sans Mono', 'Lucida Console', Consolas, Monaco, monospace;
}

h1 { 
   font-size:2.2em; 
}

h2 { 
   font-size:1.8em; 
}

h3 { 
   font-size:1.4em; 
}

h4 { 
   font-size:1.0em; 
}

h5 { 
   font-size:0.9em; 
}

h6 { 
   font-size:0.8em; 
}

a:visited {
   color: rgb(50%, 0%, 50%);
}

pre {	
   margin-top: 0;
   max-width: 95%;
   border: 1px solid #ccc;
   white-space: pre-wrap;
}

pre code {
   display: block; padding: 0.5em;
}

code.r, code.cpp {
   background-color: #F8F8F8;
}

table, td, th {
  border: none;
}

blockquote {
   color:#666666;
   margin:0;
   padding-left: 1em;
   border-left: 0.5em #EEE solid;
}

hr {
   height: 0px;
   border-bottom: none;
   border-top-width: thin;
   border-top-style: dotted;
   border-top-color: #999999;
}

@media print {
   * { 
      background: transparent !important; 
      color: black !important; 
      filter:none !important; 
      -ms-filter: none !important; 
   }

   body { 
      font-size:12pt; 
      max-width:100%; 
   }
       
   a, a:visited { 
      text-decoration: underline; 
   }

   hr { 
      visibility: hidden;
      page-break-before: always;
   }

   pre, blockquote { 
      padding-right: 1em; 
      page-break-inside: avoid; 
   }

   tr, img { 
      page-break-inside: avoid; 
   }

   img { 
      max-width: 100% !important; 
   }

   @page :left { 
      margin: 15mm 20mm 15mm 10mm; 
   }
     
   @page :right { 
      margin: 15mm 10mm 15mm 20mm; 
   }

   p, h2, h3 { 
      orphans: 3; widows: 3; 
   }

   h2, h3 { 
      page-break-after: avoid; 
   }
}

</style>

<!-- MathJax scripts -->
<script type="text/javascript" src="https://c328740.ssl.cf1.rackcdn.com/mathjax/2.0-latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>

<h1>Identifiers</h1>

<p>An <em>identifier</em> is an unlimited-length (but the length is greater than one) sequence of letters and digits, but not a Keyword:
\[ \begin{eqnarray*}
 Letter  &::=& {\tt a \mid b \mid ... \mid z \mid A \mid B \mid ... \mid Z} ;\\
 Digit  &::=& {\tt 1 \mid 2 \mid 3 \mid4 \mid5 \mid6 \mid7 \mid8 \mid9 \mid0};\\
 ValidChar  &::=&  Letter   ~\mid~  Digit ;\\
 IDChar &::=& Letter ~|~ \tt \_;\\
 Identifier  &::=&  IDChar  \{ IDChar  ~ \mid~  Digit  \}^*.
\end{eqnarray*}
 \]
In which the letter is defied as the character in the set 
\[ \{{\tt a}, {\tt b}, {\tt c}, {\tt d}, 
{\tt e}, {\tt f}, {\tt g}, {\tt h}, 
{\tt i}, {\tt j}, {\tt k}, {\tt l}, {\tt m}, 
{\tt n}, {\tt o}, {\tt p}, {\tt q}, {\tt r}, 
{\tt s}, {\tt t}, {\tt u}, {\tt v}, {\tt w}, 
{\tt x}, {\tt y}, {\tt z}, {\tt A}, {\tt B}, 
{\tt C}, {\tt D}, {\tt E}, {\tt F}, {\tt G}, 
{\tt H}, {\tt I}, {\tt J}, {\tt K}, {\tt L}, 
{\tt M}, {\tt N}, {\tt O}, {\tt P}, {\tt Q}, 
{\tt R}, {\tt S}, {\tt T}, {\tt U}, {\tt V}, 
{\tt W}, {\tt X}, {\tt Y}, {\tt Z}
\}.
 \]</p>

<h1>Types, Values, and Variables</h1>

<p>The types of the Apricot  language are divided into two categories:
mathematic types and reference types. 
\[ \begin{align*}
 Type ::= & PrimitiveType \mid MathematicType  \\
          & \mid  ReferenceType ;\\
\end{align*}
 \]</p>

<h2>Mathematic Types and Values</h2>

<p>Primitive Type is the same as mathematicType except that, primitive type variable 
can not be shared and has the feature of &ldquo;call-by-value&rdquo; during method calls. 
Call-by-value requires the evaluation of the arguments before passing them to the definition of the method. Another style is call-by-name which passing the arguments directly to the definition.
For mathematic and reference types we take the call-by-name style argument passing for method invocation. In addition, there is a difference between mathematic type and reference type. Reference type variables can refer to another object with the same type by the assignment statement. But, the assignment can only change the mathematical value of the object for mathematic type variables. It means that, when a mathematic type variable refers to a methematic type object for the first time, the variable will hold this object all the time and only the mathematical value of this object can be updated.
\[ \begin{eqnarray*}
 MathematicType  &::=&   {\tt Int} \mid {\tt Real};\\
\end{eqnarray*}
 \]
Accordingly, the primitive type is defined by:
\[ \begin{eqnarray*}
 PrimitiveType &::=&  {\tt int} \mid {\tt real} \mid {\tt boolean} \mid {\tt String};\\
\end{eqnarray*}
 \]</p>

<ul>
<li>Mathematic types : <em>Boolean</em> type and the numeric types. The <em>Boolean</em>
type represents a logical quantity in the literals set \( \{ {\tt true}, {\tt false}\} \).
The numeric types are the integer type <em>Integer</em>, and the real number type
<em>Real</em>;</li>
<li>Reference types : class types, interface types, and array types.</li>
</ul>

<p>An object is a dynamically created instance of a class type or a dynamically 
created array. The values of a reference type are references to objects.</p>

<h2>Reference Types and Values</h2>

<p>There are four kinds of reference types: class types, interface types, type variables.
\[ \begin{align*}
 ReferenceType  ::=&  ClassType  \mid  InterfaceType   \\
                   &  \mid  ArrayType \mid IntervalType ;\\
 ClassType  ::=&  Identifier ;\\
 InterfaceType  ::=&  Identifier  \mid {\tt System} \mid {\tt Plant} \\
& \mid  {\tt Controller}\\
& \mid {\tt Dynamic} \mid {\tt Assignment} \\
& \mid {\tt ParallelAssignment} \\
& \mid {\tt SequentialAssignment} 
\end{align*}
 \]</p>

<h2>Variables</h2>

<p>A variable is a physical quantity name in physical world or a storage location in the memory of computer, and has an associated type that is either a mathematic type or a reference type.</p>

<p>The value of a variable  is changed by an assignment or according to the differential equations defined in <em>Dynamic</em> classes.</p>

<p>For all types, the default value of any type variable is the special value \( {\tt null} \).</p>

<h3>Variables of Mathematic Type</h3>

<p>Mathematic type variables are always hold a mathematic value of that exact mathematic type.</p>

<h3>Variables of Reference Type</h3>

<p>A variable of a reference type \( {\tt R} \) can hold a null reference, a reference to an instance of class <em>C</em>, any class that is a subclass of <em>C</em>, any class that is a implementation of interface <em>C</em> or any array type.</p>

<h1>Mathematical Operations</h1>

<h2>Arithmetic Operators</h2>

<p>For \( x,y \in \mathcal{R} \), the following arithmetic operators are defined on Real numbers (\( \mathcal{R} \)):</p>

<ul>
<li> \( x + y \),  binary plus, addition;</li>
<li> \( x - y \),  binary minus,subtraction;</li>
<li> \( x * y \),  binary multiple, multiplication;</li>
<li> \( x / y \),  binary divide, division;</li>
<li> \( +x \), unary plus, it denotes the identity operation on \( x \), thus, \( x == +x \) with
respect to the evaluation;</li>
<li> \( -x \),  unary minus, inverse operation on \( x \), thus, \( (-x) + x == 0 \).</li>
</ul>

<h2>Boolean Operators</h2>

<p>Standard boolean operators are defined for all <em>Boolean</em> type values \( x, y \):</p>

<ul>
<li><p>\( == \), equality;</p></li>
<li><p>\( != \),  inequality;</p></li>
<li><p>\( ! \), logical complement;</p></li>
<li><p>\( {\tt in} \),  belong to interval, the result value of (\( x~ {\tt in}~[a,b] \)) is \( {\tt true} \) iff \( a \leq x \leq b \);</p></li>
<li><p>\( {\tt and} \), the result value of (\( x~{\tt and}~y \)) is \( {\tt true} \) if both operand values are \( {\tt true} \);</p></li>
<li><p>\( {\tt xor} \), the result value of (\( x~{\tt xor}~y \)) is \( {\tt true} \) if the operand 
values are different;</p></li>
<li><p>\( {\tt or} \), the result value of (\( x~ {\tt or} ~y \)) is \( {\tt true} \) if one of the operand values is \( {\tt true} \).</p></li>
</ul>

<h2>Numeric Comparisons</h2>

<p>Standard comparison operations are defined for all Real numbers (\( \mathcal{R} \)), which result in a value of type <em>Boolean</em>:</p>

<ul>
<li>\( == \),   equality;</li>
<li>\( != \),   inequality;</li>
<li>\( < \),   less than;</li>
<li>\( <= \),   less than or equal to;</li>
<li>\( > \),   greater than;</li>
<li>\( >= \),   greater than or equal to.</li>
</ul>

<p>Special Symbol numbers:</p>

<ul>
<li>\( Inf \) is stands for \( \infty \), which is equal to itself and greater than any other number;</li>
<li>\( -Inf \) is stands for \( -\infty \), which is equal to itself and less then any other number;</li>
</ul>

<h2>Mathematical Functions</h2>

<p>We provides a comprehensive collection of mathematical functions and operators. These mathematical operations are defined on Real numbers (\( \mathcal{R} \)).</p>

<ul>
<li>\( dot(x,n) \), n-th order derivative of \( x \) over time (\( t \)), i.e. \( dot(x,n)=\frac{d^n x}{dt^n} \).</li>
<li>\( dot(x,y,n) \),n-th order derivative of \( x \) over \( y \), i.e. \( dot(x,y,n)=\frac{d^n x}{d y^n} \).</li>
<li>Standard trigonometric functions: \( sin \),    \( cos \),    \( tan \),    \( cot \),    \( sec \) and    \( csc \).</li>
<li>\( round(x) \), round \( x \) to the nearest integer, omitting decimal fractions smaller than \( 0.5 \), e.g. \( round(2.5)=3 \), \( round(0.4)=0 \).</li>
<li>\( floor(x) \), round \( x \) towards \( -Inf \), e.g. \( round(2.5)=2 \).</li>
<li>\( ceil(x) \), round \( x \) towards \( +Inf \), e.g. \( ceil(2.5)=3 \).</li>
<li>\( div(x,y) \), truncated division, and quotient rounded towards zero.</li>
<li>\( fld(x,y) \), floored division, quotient rounded towards \( -Inf \).</li>
<li>\( rem(x,y) \), remainder, satisfies \( x = div(x,y)*y + rem(x,y) \), implying that sign of \( rem(x,y) \) matches \( x \).</li>
<li>\( mod(x,y) \), modulus; satisfies \( x = fld(x,y)*y + mod(x,y) \), implying that sign of $ mod(x,y)$ matches \( y \).</li>
<li>\( gcd(x_1,x_2,...,x_n) \), greatest common divisor of \( x_1 \), \( x_2 \), &hellip;, \( x_n \) with sign matching \( x_1 \).</li>
<li>\( lcm(x_1,x_2,...,x_n) \), least common multiple of \( x_1 \), \( x_2 \), &hellip;, \( x_n \) with sign matching \( x_1 \).</li>
<li>\( abs(x) \), a positive value with the magnitude of \( x \).</li>
<li>\( sign(x) \), indicates the sign of \( x \), returning \( -1 \), \( 0 \), or \( +1 \).</li>
<li>\( sqrt(x) \), the square root of \( x \), i.e. \( \sqrt[2]{x} \).</li>
<li>\( root(x,b) \), the b-th root of \( x \), i.e. \( \sqrt[b]{x} \).</li>
<li>\( hypot(x,y) \), accurate \( sqrt(x^2 + y^2) \) for all values of \( x \) and \( y \).</li>
<li>\( pow(x,y) \), \( x \) raised to the exponent \( y \), i.e. \( x^y \).</li>
<li>\( exp(x) \), the natural exponential function at \( x \), i.e. \( e^x \).</li>
<li>\( log(x) \), the natural logarithm of \( x \), i.e. \( \log(x) \) or \( \ln(x) \).</li>
<li>\( log(b,x) \), the base b logarithm of \( x \), i.e. \( \log_b(x) \).</li>
<li>\( erf(x) \), the error function (Gauss error function) at \( x \), i.e. \( erf(x)=\frac{2}{\sqrt{\pi}}\int_0^x{e^{t^2}dt} \).</li>
<li>\( gamma(x) \), the gamma function at \( x \).</li>
<li>\( max(x_1,...,x_n) \).</li>
<li>\( min(x_1,...,x_n) \).</li>
</ul>




{% include JB/setup %}
