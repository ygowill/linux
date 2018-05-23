#!/bin/bash
# name:   a script to install OpenCV 3.4.1 on Ubuntu
# author: ygowill
# date:   2018.5.22
# blog:   www.ygowill.xyz

echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m     process start       \033[0m"
echo "\033[44;37m*************************\033[0m"
cd /home/$LOGNAME/Downloads
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m     install wget        \033[0m"
echo "\033[44;37m*************************\033[0m"
yes | sudo apt-get install wget
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m     install unzip       \033[0m"
echo "\033[44;37m*************************\033[0m"
yes | sudo apt-get install unzip
echo "\033[44;37m*************************\033[0m"
echo "\033[44;37m  install resources      \033[0m"
echo "\033[44;37m*************************\033[0m"
git clone https://github.com/ygowill/linux.git
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
yes | sudo apt-get install build-essential libgtk2.0-dev libavcodec-dev libavformat-dev libjpeg.dev libtiff4.dev libswscale-dev libjasper-dev
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
echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf
sudo ldconfig
echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig\n" >> /etc/bash.bashrc
echo "export PKG_CONFIG_PATH" >> /etc/bash.bashrc
source /etc/bash.bashrc
sudo updatedb
