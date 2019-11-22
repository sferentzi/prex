#!/bin/bash
# --- ezt betettem kézire @ slave
#curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
#yum install gcc-c++ make nodejs -y
#yum install -y nodejs
# --- ezt betettem kézire @ slave
#node index.js
pwd
sudo npm install supervisor -g
sudo supervisor index.js &