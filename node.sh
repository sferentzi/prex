#!/bin/bash
yum install git -y
curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
yum install gcc-c++ make nodejs -y
yum install -y nodejs
node index.js
#cd /vagrant_data
# sudo npm install -g pm2
#npm install supervisor -g
#supervisor index.js &
#pm2 start index.js --watch
echo "index.js is implemented"