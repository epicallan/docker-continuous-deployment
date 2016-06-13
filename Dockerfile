FROM node:latest

# create app directory
RUN mkdir  /src

# copy app files into
COPY . /src

EXPOSE 3000

RUN npm install

CMD npm start
