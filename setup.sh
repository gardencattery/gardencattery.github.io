#!/bin/bash

set -xe

git remote add prodrepo git@github.com:gardencattery/gardencattery.github.io.git
git remote add devrepo git@github.com:devgardencattery/devgardencattery.github.io.git
git fetch prodrepo
git fetch devrepo

git checkout -b prod --track prodrepo/master

git remote remove origin
git branch -d master

git checkout -b master --track devrepo/master
