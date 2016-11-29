/**
 * Emerald, the language agnostic templating engine.
 * Copyright 2016, Emerald Language (MIT)
 */

import 'dart:async';

main() async {
  RegExp exp = new RegExp(r"(\w+)");
  String str = "Parse this string and print all matches.";
  Iterable<Match> matches = exp.allMatches(str);

  // Print all matches in string.
  for (var match in matches) {
    print(match[0]);
  }
}
