#!/bin/bash
yum update -y

curl -sL https://rpm.nodesource.com/setup_18.x -o nodesource_setup.sh | bash -

bash nodesource_setup.sh

yum install nodejs -y

yum install build-essential -y

yum install ncdu

node -v | grep v8

rpm install -g pm2

pm2 update

export app_root=/usr/cddemo

if [ -d "$app_root" ];then
  rm -rf /usr/cddemo
  mkdir -p /usr/cddemo
else
  mkdir -p /usr/cddemo
fi
