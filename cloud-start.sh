#! /bin/bash

# install & star docker
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo docker run hello-world

# start rasp cloud services
docker compose -f cloud.yaml up -d

# install & start rasp-cloud
curl -o cloud.tar.gz https://packages.baidu.com/app/openrasp/release/1.3.7/rasp-cloud.tar.gz
tar -xzvf cloud.tar.gz
mv rasp-cloud-2022-01-28 cloud
/bin/cp init/app.conf cloud/conf/app.conf -rf
cd cloud
./rasp-cloud -d