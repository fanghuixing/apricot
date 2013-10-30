---
layout: page
comments: true
title: Apricot Syntax
description: "Apricot Syntax"
---
# Identifiers
An *identifier* is an unlimited-length (but the length is greater than one) sequence of letters and digits, but not a Keyword:

$$
\begin{align}
\mbox{Union: } & A\cup B = \{x\mid x\in A \mbox{ or } x\in B\} \\
\mbox{Concatenation: } & A\circ B  = \{xy\mid x\in A \mbox{ and } y\in B\} \\
\mbox{Star: } & A^\star  = \{x_1x_2\ldots x_k \mid  k\geq 0 \mbox{ and each } x_i\in A\} \\
\end{align}
$$

$$
\begin{eqnarray*}
 Letter  &::=& {\tt a \mid b \mid ... \mid z \mid A \mid B \mid ... \mid Z} ;\\
 Digit  &::=& {\tt 1 \mid 2 \mid 3 \mid4 \mid5 \mid6 \mid7 \mid8 \mid9 \mid0};\\
 ValidChar  &::=&  Letter   ~\mid~  Digit ;\\
 IDChar &::=& Letter ~|~ \tt \_;\\
 Identifier  &::=&  IDChar  \{ IDChar  ~ \mid~  Digit  \}^*.
\end{eqnarray*}
$$

{% include JB/setup %}