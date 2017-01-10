#!/usr/bin/env bash

gem install sass
gem install coffee

# compile sass and coffeescript
./bin/compile.sh

git clone git@github.com:emerald-lang/emerald.git
cd emerald
git checkout develop
gem install bundler
bundle install
cd ..

emerald/bin/emerald process index.emr -b
mv index.emr.html index.html
