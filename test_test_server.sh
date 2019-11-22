#!/bin/bash

shellcheck test_server.sh

if [ $? -eq 0 ]
then
  echo "Your script passed the test"
else
  echo "Some error occured" >&2
fi