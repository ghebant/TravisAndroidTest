#!/bin/sh

git config --global user.email "guillaume.hebant@epitech.eu"
git config --global user.name "ghebant"
git remote add origin https://$1@github.com/ghebant/TravisAndroidTest.git #> /dev/null 2>&1
git push --quiet --set-upstream origin master
#git push https://bc6bbc90201316ea45daded302f0f55917aad13d@github.com/ghebant/TravisAndroidTest HEAD