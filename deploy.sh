#!/bin/bash

set -e

git checkout prod

git merge master

echo "www.gardencattery.co.uk" > CNAME

git add CNAME

git commit -m "Fix CNAME for prod release"

git push
