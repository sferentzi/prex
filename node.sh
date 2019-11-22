#!/bin/bash
sudo yum install git -y
sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
sudo yum install gcc-c++ make nodejs -y
sudo yum install -y nodejs
sudo node index.js
#cd /vagrant_data
# sudo npm install -g pm2
#npm install supervisor -g
#supervisor index.js &
#pm2 start index.js --watch
echo "index.js is implemented"