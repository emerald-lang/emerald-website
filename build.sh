#!/usr/bin/env bash

gem install sass

git clone git@github.com:emerald-lang/emerald.git
cd emerald
git checkout develop
gem install bundler
bundle install
cd ..

./bin/compile.sh
