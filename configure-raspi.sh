#!/bin/bash

curl https://get.docker.com/ | sudo sh

sudo cp etc/docker/daemon.json /etc/docker

sudo usermod -aG docker pi

sudo apt install -y unattended-upgrades python3-pip tree curl net-tools bridge-utils tshark tmux dnsutils screen htop git make g++ ncdu iftop unzip

sudo pip3 install docker-compose

git clone https://github.com/codingspiderfox/linux-devenv
cd linux-devenv
sudo ./install-ohmyzsh.sh
cd -

cp home/pi/* ~/

sudo chown -R pi:pi /home/pi

sudo cp etc/apt/apt.conf.d/* /etc/apt/apt.conf.d/
sudo dpkg-reconfigure --priority=low unattended-upgrades

sudo reboot
