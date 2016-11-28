#!/usr/bin/env bash

git config user.name "Circle CI"
git config user.email "dave@davepagurek.com"

message="Deploy commit $(git rev-parse HEAD)"
echo "Deploying $(git rev-parse HEAD) to master"

rm .gitignore # We want all compiled assets! ALL OF THEM
echo "emerald" > .gitignore # except emerald
git add --all
git commit -m "$message"
git push --force --quiet "https://github.com/emerald-lang/website.git" source:master > /dev/null 2>&1
echo "Deployed! Going to sleep..."
