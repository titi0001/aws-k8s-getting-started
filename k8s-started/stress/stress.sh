#!/bin/bash
# set time to 0.001

for i in {1..10000}; do
  curl localhost:30000 >> output.txt
  sleep $1

done