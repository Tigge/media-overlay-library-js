#!/usr/bin/env bash

VERSION=$(cat package.json | jq .version)
bash sbin/changelog.sh > CHANGELOG.md && git add CHANGELOG.md
git add -u
git commit -m $VERSION
git tag -a -m $VERSION $VERSION
