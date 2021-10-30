#!/bin/bash

wget https://launchpad.net/~quamotion/+archive/ubuntu/ppa/+files/libimobiledevice-utils_1.3.1-1.3.17-0focal_amd64.deb
sudo dpkg -i libimobiledevice-dev_1.3.1-1.3.17-0focal_amd64.deb
sudo rm -rf libimobiledevice-dev_1.3.1-1.3.17-0focal_amd64.deb