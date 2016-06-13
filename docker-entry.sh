#!/bin/bash

# working directory
cd /src

# git clone
rm -rf ./* \
        && git clone $GIT_REPO --branch ${GIT_BRANCH:-"master"}

# start web service
npm install

npm start
