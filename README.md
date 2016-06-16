## Node With Docker - Continuous Integration and Delivery Test Project

[![build status](https://img.shields.io/travis/epicallan/docker-continuous-deployment/master.svg?style=flat-square)](https://travis-ci.org/epicallan/docker-continuous-deployment)

- This is a project for Continuous deployment using docker
  and github.
- There is an [app on the server](https://github.com/epicallan/github-deploy-server) which is listening for new commits via github hooks
- The app runs a [bash script](https://github.com/epicallan/docker-continuous-deployment/blob/master/deploy.sh) that rebuilds the docker app container
- The script deletes the current application directory and fetches the latest repo from github.



## Helpful commands to remember

To start interactive shell command in an image ```docker run -it web /bin/bash```
