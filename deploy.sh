#!/usr/bin/env sh

# abort on errors
set -e
# build vuepress
yarn docs:build

cd docs/.vuepress/dist
git init
git add -A
git commit -m deploy

git push -f git@github.com:iamnogada/sam-k8s-lab.git master:gh-pages

cd -

