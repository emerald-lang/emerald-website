#!/usr/bin/env bash

# Compile emerald
../emerald/bin/emerald process index.emr -b
mv index.emr.html index.html

# Compile sass and coffeescript here
coffee -o ./js/ -c coffee/parser.coffee
sass sass/emerald.sass css/emerald.css
sass sass/syntax.sass css/syntax.css
