---
layout: page
comments: true
title: Apricot Syntax
description: "Apricot Syntax"
---
# Identifiers
An *identifier* is an unlimited-length (but the length is greater than one) sequence of letters and digits, but not a Keyword:
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