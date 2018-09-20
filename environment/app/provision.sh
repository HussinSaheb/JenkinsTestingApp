#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo rm /etc/nginx/site-available/default
sudo rm /etc/nginx/site-enabled/default
# set up nginx reverse proxy
sudo ln -s /home/ubuntu/environment/app/default /etc/nginx/site-available/default
sudo ln -s /etc/nginx/site-available/default /etc/nginx/site-enabled/default

sudo nginx -s reload
