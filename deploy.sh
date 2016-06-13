rm -rf ~/app.git

mkdir ~/app.git

cd ~/app.git

git clone git@github.com:epicallan/docker-continuous-deployment.git ~/app.git

isNotFirstBuild=`docker images | grep -w web`

docker build -t web . # builds app image

if [[ !$isNotFirstBuild ]]; then
  echo 'first build so we run composer'
  docker-compose up # connects up the apps
else
  docker-compose restart
fi
