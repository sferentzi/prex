#!/bin/bash
echo "Testing node.js server @ 192.168.56.20:6543"

webserv="192.168.56.20:6543" 

keyword="jenkins-stundent-slave" # enter the keyword for test content

if curl -s "$webserv" | grep "$keyword"
then
    # if the keyword is in the content
    echo " The webserver is working fine."
else
    echo "!!! Error !!! Something went wrong. Please contact the Administrator... If any..."
fi