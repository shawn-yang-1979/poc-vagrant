#!/bin/bash
# Reference:
# https://gist.github.com/naholyr/4275302
cd `dirname $0`
sudo rm -rf ../dm-server/config
sudo cp cpm/dm-server/config ../dm-server
sudo rm -rf ../dm-server/run-DM.sh
sudo cp cpm/dm-server/run-DM.sh ../dm-server
sudo cp cpm/dm-server/dm-server-service /etc/init.d
sudo service dm-server-service start
sudo update-rc.d dm-server-service defaults