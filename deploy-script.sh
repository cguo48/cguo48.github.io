#!/bin/bash

rm -rf _site

git clone -b master `git config remote.origin.url` _site
bundle exec jekyll build
cd _site

# if you don't have a custom domain, remove these 2 CNAME lines completely
# touch CNAME 
# add your custom domain here
# echo "blog.sudokrew.com" >> CNAME  

git add .
git commit -m "Scripted build to master"
git push