module(unparameterized("lexical/literals/EscapeSequences"),[imports([])],[exports(conc-grammars(conc-grammars(sorts([sort("EscapeSeq"),sort("NamedEscape"),sort("OctaEscape"),sort("LastOcta")]),syntax([prod([sort("OctaEscape")],sort("EscapeSeq"),no-attrs),prod([sort("NamedEscape")],sort("EscapeSeq"),no-attrs),prod([lit("\"\\\\\""),char-class(simple-charclass(present(conc(short("b"),conc(short("t"),conc(short("n"),conc(short("f"),conc(short("r"),conc(short("\\\""),conc(short("\\'"),short("\\\\")))))))))))],sort("NamedEscape"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"NamedEscape\""))])))])),prod([lit("\"\\\\\""),sort("LastOcta")],sort("OctaEscape"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"OctaEscape1\""))])))])),prod([lit("\"\\\\\""),char-class(simple-charclass(present(range(short("0"),short("3"))))),sort("LastOcta")],sort("OctaEscape"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"OctaEscape2\""))])))])),prod([lit("\"\\\\\""),char-class(simple-charclass(present(range(short("4"),short("7"))))),char-class(simple-charclass(present(range(short("0"),short("7")))))],sort("OctaEscape"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"OctaEscape2\""))])))])),prod([lit("\"\\\\\""),char-class(simple-charclass(present(range(short("0"),short("3"))))),char-class(simple-charclass(present(range(short("0"),short("7"))))),char-class(simple-charclass(present(range(short("0"),short("7")))))],sort("OctaEscape"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"OctaEscape3\""))])))])),prod([char-class(simple-charclass(present(range(short("0"),short("7")))))],sort("LastOcta"),no-attrs)])),restrictions([follow([sort("LastOcta")],single(char-class(simple-charclass(present(range(short("0"),short("7")))))))])))])