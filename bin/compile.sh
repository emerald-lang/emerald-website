#!/usr/bin/env bash

# Compile emerald
../emerald/bin/emerald process index.emr -b
mv index.emr.html index.html

# Compile sass and coffeescript here
dart2js ./dart/parser.dart -o ./js/parser.js
coffee -o ./js/ -c coffee/main.coffee
sass -I css/emerald.css sass/emerald.sass
sass -I css/syntax.css sass/syntax.sass
