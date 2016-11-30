#!/usr/bin/env bash

# Compile sass and coffeescript here
coffee -o ./js/ -c coffee/main.coffee
sass -I css/emerald.css sass/emerald.sass
sass -I css/syntax.css sass/syntax.sass
