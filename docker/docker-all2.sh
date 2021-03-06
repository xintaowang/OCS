curl -sSL https://get.docker.com/ | sh
systemctl start docker
systemctl enable docker

###安装docker-compose
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > ~/docker-compose
chmod +x ~/docker-compose
sudo mv ~/docker-compose /usr/local/bin/docker-compose

###给当前用户授权
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
