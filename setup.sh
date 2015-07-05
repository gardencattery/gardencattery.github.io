#!/bin/bash

set -xe

git config push.default upstream

git remote add prodrepo git@github.com:gardencattery/gardencattery.github.io.git
git remote add devrepo git@github.com:devgardencattery/devgardencattery.github.io.git
git fetch prodrepo
git fetch devrepo

git checkout -b prod --track prodrepo/master

git remote remove origin
git branch -D master

git checkout -b dev --track devrepo/master
