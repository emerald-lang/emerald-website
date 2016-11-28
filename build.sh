#!/usr/bin/env bash

git clone git@github.com:emerald-lang/emerald.git
cd emerald
gem install bundler
bundle install
cd ..

emerald/bin/emerald process index.emr -b
mv index.emr.html index.html
