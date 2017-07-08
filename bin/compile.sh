#!/usr/bin/env bash

# Compile emerald
emerald process index.emr -b
mv index.emr.html index.html

# Compile sass
sass sass/emerald.sass css/emerald.css
sass sass/syntax.sass css/syntax.css
