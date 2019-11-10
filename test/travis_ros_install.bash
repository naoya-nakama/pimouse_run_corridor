#!/bin/bash -xve

#required packages
sudo pip install catkin_pkg
sudo pip install empy
sudo pip install pyyaml
sudo pip install rospkg

#ros install
cd ..
#git clone git@github.com:naoya-nakama/ros_setup_scripts_Ubuntu18.04_server.git
git clone https://github.com/naoya-nakama/ros_setup_scripts_Ubuntu18.04_server.git
cd ./ros_setup_scripts_Ubuntu18.04_server
bash ./step0.bash
#step0 is complete
bash ./step1.bash
#step1 is complete

#catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/melodic/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make

# Copyright 2019 Naoya Nakama
# Released under the BSD License.
# To make line numbers be identical with the book, this statement is written here. Don't move it to the header.
