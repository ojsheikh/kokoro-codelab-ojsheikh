#!/bin/bash

# Display commands being run.
set -x

pwd

git init .
git config --global --add safe.directory /tmpfs/src/github/kokoro-codelab-ojsheikh
git status

git config get user.email
git config get user.name

if [ "$1" == "release" ]; then
  javac -g:none Hello.java
else
  javac Hello.java
fi
