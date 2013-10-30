---
layout: page
comments: true
title: Apricot Syntax
description: "Apricot Syntax"
---
## Identifiers
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
\[ \\{ {\tt a}, 
{\tt b}, {\tt c}, {\tt d}, 
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
\\}.\]

## Types, Values, and Variables
{% include JB/setup %}