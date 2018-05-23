# ubuntu 18.04 OpenCV3.4.1 安装脚本

使用如下指令运行脚本(在运行ubuntu_opencv_installation.sh的过程中需要输入几次密码)

    cd ~
    sudo apt-get install git
    git clone https://github.com/ygowill/linux.git
    cd ./linux
    sudo chmod +x ubuntu_opencv_install.sh
    sh ubuntu_opencv_install.sh
    source /etc/bash.bashrc
    sudo updatedb

在安装完成后，可使用如下指令运行示例程序，判断安装是否成功。

    cd ~/linux/opencv-3.4.1/samples/cpp/example_cmake
    cmake .
    make
    ./opencv_example
