module(unparameterized("lexical/Identifiers"),[imports([module(unparameterized("lexical/Keywords"))])],[exports(conc-grammars(conc-grammars(conc-grammars(sorts([sort("Id"),sort("ID")]),context-free-syntax([prod([sort("ID")],sort("Id"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Id\""))])))]))])),lexical-syntax([prod([char-class(simple-charclass(present(conc(range(short("A"),short("Z")),conc(range(short("a"),short("z")),conc(short("\\_"),short("\\$"))))))),iter-star(char-class(simple-charclass(present(conc(range(short("A"),short("Z")),conc(range(short("a"),short("z")),conc(range(short("0"),short("9")),conc(short("\\_"),short("\\$")))))))))],sort("ID"),no-attrs),prod([sort("Keyword")],sort("ID"),attrs([reject])),prod([lit("\"True\"")],sort("ID"),attrs([reject])),prod([lit("\"False\"")],sort("ID"),attrs([reject])),prod([lit("\"null\"")],sort("ID"),attrs([reject]))])),lexical-restrictions([follow([sort("ID")],single(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),conc(range(short("0"),short("9")),conc(short("\\_"),short("\\$"))))))))))])))])