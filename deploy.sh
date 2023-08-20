#!/usr/bin/env sh

DEPLOY_BRANCH="gh-pages"

# 确保脚本抛出遇到的错误
set -e

# 构建
npm run docs:build

# 进入生成的构建文件夹
cd docs/.vitepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
git push -f git@github.com:AnnGreen1/vitepages.github.io.git

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -