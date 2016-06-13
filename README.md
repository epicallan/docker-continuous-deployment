## Node With Docker - Continuous Integration and Delivery Test Project

[![build status](https://img.shields.io/travis/epicallan/docker-continuous-deployment/master.svg?style=flat-square)](https://travis-ci.org/epicallan/docker-continuous-deployment)

- This is a test project for Continuous deployment and testing using docker
  and travis-ci.
- There is an app on the server where its hosted tracking its builds on travis-ci
- When the tests on travis-ci pass, a bash script is run on docker that rebuilds the docker container
- The script deletes the current docker repo fetches the latest repo from github and starts the app.
