#!/bin/bash
# name:   a script to install OpenCV 3.4.1 on Ubuntu
# author: ygowill
# date:   2018.5.22
# blog:   www.ygowill.xyz

echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m     process start       \033[0m"
echo "\033[44;37m*************************\033[0m"
echo ""
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m     install wget        \033[0m"
echo "\033[44;37m*************************\033[0m"
yes | sudo apt-get install wget
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m     install unzip       \033[0m"
echo "\033[44;37m*************************\033[0m"
yes | sudo apt-get install unzip
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m   unzip opencv3.4.1     \033[0m"
echo "\033[44;37m*************************\033[0m"
unzip 3.4.1.zip
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m     install cmake       \033[0m"
echo "\033[44;37m*************************\033[0m"
yes | sudo apt-get install cmake
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m  install dependencies   \033[0m"
echo "\033[44;37m*************************\033[0m"
yes | sudo apt-get install build-essential libgtk2.0-dev libgtk-3-dev libavcodec-dev libavformat-dev libjpeg-dev libtiff5-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff5-dev libdc1394-22-dev libv4l-dev liblapacke-dev libxvidcore-dev libx264-dev libatlas-base-dev gfortran ffmpeg
cd ./opencv-3.4.1
mkdir build
cd ./build
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m succeed to create folder\033[0m"
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m       start cmake       \033[0m"
echo "\033[44;37m*************************\033[0m"
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m        start make       \033[0m"
echo "\033[44;37m*************************\033[0m"
sudo make
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m       install make      \033[0m"
echo "\033[44;37m*************************\033[0m"
sudo make install
sudo touch /etc/ld.so.conf.d/opencv.conf
sudo chmod 777 /etc/ld.so.conf.d/opencv.conf
echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf
sudo ldconfig
sudo chmod 777 /etc/bash.bashrc
echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig" >> /etc/bash.bashrc
echo "export PKG_CONFIG_PATH" >> /etc/bash.bashrc
