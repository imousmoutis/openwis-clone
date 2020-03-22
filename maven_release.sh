#!/bin/bash

git checkout master
mvn --batch-mode -Pdependencies,openwis release:prepare

git fetch --all
git checkout -b develop origin/develop
git merge --no-edit --no-ff master
git remote set-url origin git@github.com:imousmoutis/openwis-clone.git
git push -u origin develop