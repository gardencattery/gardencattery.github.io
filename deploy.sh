#!/bin/bash

set -xe

git checkout prod

git merge dev

git push

git checkout dev
