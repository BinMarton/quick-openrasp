#! /bin/bash

# install & star docker
sudo yum install -y yum-util
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install  -y ydocker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo docker run hello-world

# start rasp services
docker compose up -d

# install & start rasp-cloud
curl -o cloud.tar.gz https://packages.baidu.com/app/openrasp/release/1.3.7/rasp-cloud.tar.gz
tar -xzvf cloud.tar.gz
mv rasp-cloud-2022-01-28 cloud
/bin/cp init/app.conf cloud/conf/app.conf -rf
cd cloud
./rasp-cloud -d