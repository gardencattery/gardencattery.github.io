#!/bin/bash

set -xe

git checkout prod

git merge master

git push

git checkout master
