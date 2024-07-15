#!/bin/bash

# Fail on any error.
set -e
# Display commands being run.
set -x

git init .

git config get user.email
git config get user.name

if [ "$1" == "release" ]; then
  javac -g:none Hello.java
else
  javac Hello.java
fi
