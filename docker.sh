#! /bin/bash

sudo yum install -y yum-util
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install  -y ydocker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo docker run hello-world
docker compose up -d
wget -O cloud.tar.gz https://packages.baidu.com/app/openrasp/release/1.3.7/rasp-cloud.tar.gz
mkdir cloud
tar -xzvf cloud.tar.gz -C ./cloud
nohup ./rasp-cloud -d &