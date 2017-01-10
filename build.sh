#!/usr/bin/env bash

gem install sass
gem install coffee

git clone git@github.com:emerald-lang/emerald.git
cd emerald
git checkout develop
gem install bundler
bundle install
cd ..

./bin/compile.sh
