#!/bin/bash

git checkout master
mvn --batch-mode release:prepare

git fetch --all
git checkout -b develop origin/develop
git merge --no-edit --no-ff master
git remote set-url origin git@github.com:imousmoutis/opewis-clone.git
git push -u origin develop