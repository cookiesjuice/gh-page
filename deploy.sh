#!/usr/bin/env bash
# abort on errors
set -e

# build
echo "building project"
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# pushing
echo "pushing to github.io"
git push -f git@github.com:cookiesjuice/cookiesjuice.github.io.git master

echo "success"

cd -
