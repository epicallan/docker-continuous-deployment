#!/bin/bash

# working directory
cd /src

# git clone
rm -rf /src
        && mkdir -p /src
        && git clone $GIT_REPO --branch ${GIT_BRANCH:-"master"} /src

# start web service
npm install

npm start
