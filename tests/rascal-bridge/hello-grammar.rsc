module examples::HelloGrammar

start syntax Exp = "e" | Exp "+" Exp;
