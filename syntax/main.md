---
layout: page
comments: true
title: Apricot Syntax
description: "Apricot Syntax"
---
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
 \]
</p>

<h1>Types, Values, and Variables</h1>



{% include JB/setup %}