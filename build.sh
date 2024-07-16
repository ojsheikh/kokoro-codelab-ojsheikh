#!/bin/bash

# Display commands being run.
set -x

pwd

git config --global --add safe.directory /tmpfs/src/github/kokoro-codelab-ojsheikh
git status

git config user.email
git config user.name

if [ "$1" == "release" ]; then
  javac -g:none Hello.java
else
  javac Hello.java
fi
