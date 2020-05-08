#!/bin/bash
sudo su
echo "apt update"
apt-get update
echo "instalando awscli e dependencias"
apt-get install awscli ruby wget curl -y
echo "instalando codedeploy"
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent start
echo "codedeploy service iniciado"
wget -qO- https://get.docker.com | sh
usermod -aG docker ubuntu
echo "instalacao do docker concluida"
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo "iniciando instalacao do docker-compose"
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
echo "todas as intalacaos foram concluidas"