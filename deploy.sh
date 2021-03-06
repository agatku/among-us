#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# deploying to https://<USERNAME>.github.io/<REPO>, to gh-pages branch
git push -f git@github.com:agatku/among-us.git master:gh-pages
# git push origin HEAD:main

cd -
