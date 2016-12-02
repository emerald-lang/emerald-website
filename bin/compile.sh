#!/usr/bin/env bash

# Compile emerald
../emerald/bin/emerald process index.emr -b
mv index.emr.html index.html

# Compile sass and coffeescript here
coffee -o ./js/ -c coffee/parser.coffee
sass -I css/emerald.css sass/emerald.sass
sass -I css/syntax.css sass/syntax.sass
