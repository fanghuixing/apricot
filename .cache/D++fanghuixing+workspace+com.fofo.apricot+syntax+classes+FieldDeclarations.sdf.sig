module(unparameterized("classes/FieldDeclarations"),[imports([module(unparameterized("lexical/Identifiers")),module(unparameterized("lexical/Modifiers")),module(unparameterized("types/Main")),module(unparameterized("interfaces/Annotations")),module(unparameterized("arrays/ArrayInitializers")),module(unparameterized("expressions/Main"))])],[exports(conc-grammars(conc-grammars(conc-grammars(sorts([sort("FieldDec"),sort("VarDec"),sort("VarDecId"),sort("Dim"),sort("VarInit")]),context-free-syntax([prod([iter-star(sort("Anno")),iter-star(sort("FieldMod")),sort("Type"),iter-sep(sort("VarDec"),lit("\",\"")),lit("\";\"")],sort("FieldDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"FieldDec\""))])))])),prod([sort("VarDecId")],sort("VarDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"VarDec\""))])))])),prod([sort("VarDecId"),lit("\"=\""),sort("VarInit")],sort("VarDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"VarDec\""))])))])),prod([sort("Id")],sort("VarDecId"),no-attrs),prod([sort("Id"),iter(sort("Dim"))],sort("VarDecId"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"ArrayVarDecId\""))])))])),prod([lit("\"[\""),lit("\"]\"")],sort("Dim"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Dim\""))])))])),prod([sort("Expr")],sort("VarInit"),no-attrs),prod([sort("ArrayInit")],sort("VarInit"),no-attrs)])),sorts([sort("FieldMod")])),context-free-syntax([prod([sort("Public")],sort("FieldMod"),no-attrs),prod([sort("Private")],sort("FieldMod"),no-attrs)])))])