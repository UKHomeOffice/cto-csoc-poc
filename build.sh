docker pull postgres
docker tag postgres:latest 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:postgres
docker push 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:postgres

docker pull redis
docker tag redis:latest 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:redis
docker push 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:redis

docker build -t 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:yeti -f extras/docker/Dockerfile https://github.com/yeti-platform/yeti.git
docker push 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:yeti

docker pull mongo:4.0.12
docker tag mongo:4.0.12 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:mongo
docker push 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:mongo

docker pull huginn/huginn-single-process
docker tag huginn/huginn-single-process 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:huginn-single-process
docker push 340268328991.dkr.ecr.eu-west-2.amazonaws.com/cto/csoc-poc:huginn-single-process