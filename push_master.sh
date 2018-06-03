#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git checkout master
  git add --all
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin https://${GH_TOKEN}@github.com/ghebant/TravisAndroidTest.git > /dev/null 2>&1
  git push --quiet --set-upstream origin master
}

merge() {
  git checkout master
  git merge branch_test
  #git push https://${GH_TOKEN}@github.com/ghebant/TravisAndroidTest HEAD > /dev/null 2>&1
}

merge
#setup_git
#commit_website_files
#upload_files

#TEST