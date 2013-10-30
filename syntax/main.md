---
layout: page
comments: true
title: Apricot Syntax
description: "Apricot Syntax"
---
# Identifiers
An *identifier* is an unlimited-length (but the length is greater than one) sequence of letters and digits, but not a Keyword $k$:

$$
\begin{eqnarray*}
 Letter  &::=& {\tt a \mid b \mid ... \mid z \mid A \mid B \mid ... \mid Z} ;\\
 Digit  &::=& {\tt 1 \mid 2 \mid 3 \mid 4 \mid 5 \mid 6 \mid 7 \mid 8 \mid 9 \mid 0};\\
 ValidChar  &::=&  Letter   ~\mid~  Digit ;\\
 IdChar &::=& Letter ~|~ \tt \_;\\
 Identifier  &::=&  IdChar  \{ IdChar  ~ \mid~  Digit  \}^*.
\end{eqnarray*}
$$

{% include JB/setup %}