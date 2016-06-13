rm -rf app.git

mkdir app.git

cd app.git

git clone git@github.com:epicallan/docker-continuous-deployment.git /app.git

docker build -t web . # builds app image

docker-compose up # connects up the apps
