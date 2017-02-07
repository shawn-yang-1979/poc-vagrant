#!/bin/bash
# Reference:
# https://gist.github.com/naholyr/4275302
cd `dirname $0`
sudo rm -rf ../event-processor/config
sudo cp cpm/event-processor/config ../event-processor
sudo rm -rf ../event-processor/run-EP.sh
sudo cp cpm/event-processor/run-EP.sh ../event-processor
sudo cp cpm/event-processor/event-processor-service /etc/init.d
sudo service event-processor-service start
sudo update-rc.d event-processor-service defaults