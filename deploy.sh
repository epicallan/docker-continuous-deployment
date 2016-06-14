rm -rf ~/app.git

mkdir ~/app.git

cd ~/app.git

git clone git@github.com:epicallan/docker-continuous-deployment.git ~/app.git

isFirstBuild=`docker images | grep -w web`

if [[ !$isFirstBuild ]]; then
  echo 'first build so we run composer up for all the images'
  docker build -t web . # builds app image
  docker-compose up # links up the various compose image containers
else
  echo 'updating the web app image'
  docker-compose rm -f web # remove container associated with web image
  docker build -t web . # re-builds the web app image
  docker-compose up -d --no-deps web # creates a new container for the web image without restarting the other containers
fi
