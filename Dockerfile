FROM node:latest

# install git
RUN apt-get update && apt-get install -y git

# install openssh-client
RUN apt-get update \
        && apt-get install -y openssh-client --no-install-recommends

# add github to known_hosts
RUN mkdir /root/.ssh && ssh-keyscan -t rsa github.com >> /root/.ssh/known_hosts

# create app directory
RUN mkdir  /src

# copy and set up entry script
COPY ./docker-entry.sh /

RUN chmod 700 /docker-entry.sh

# environment variables

ENV GIT_REPO="git@github.com:epicallan/docker-continuous-deployment.git"
ENV GIT_BRANCH="master"

EXPOSE 3000

ENTRYPOINT ["/docker-entry.sh"]
