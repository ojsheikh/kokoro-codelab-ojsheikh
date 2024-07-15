#!/bin/bash

# Fail on any error.
set -e
# Display commands being run.
set -x

git config get user.email
git config get user.name

ls -a -l

if [ "$1" == "release" ]; then
  javac -g:none Hello.java
else
  javac Hello.java
fi
