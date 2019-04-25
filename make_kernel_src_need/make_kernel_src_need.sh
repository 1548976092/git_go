sudo apt-get install u-boot-tools  swig python2.7-dev
sudo apt install debootstrap pv
sudo apt-get install -y ccache
sudo apt-get install binfmt-support
sudo apt-get install liblz4-tool 



#会长给的

sudo apt-get install -y git-core gnupg flex bison gperf build-essential \
zip curl libncurses5-dev zlib1g-dev libncurses5-dev \
parted kpartx debootstrap pixz qemu-user-static abootimg cgpt vboot-kernel-utils \
vboot-utils u-boot-tools bc lzma lzop automake autoconf m4 dosfstools rsync \
schedtool git dosfstools e2fsprogs device-tree-compiler libssl-dev qemu-user-static \
crossbuild-essential-armhf crossbuild-essential-armel crossbuild-essential-arm64 \
systemd-container libgmp3-dev gawk qpdf bison flex make git libfl-dev


Makefile有三个非常有用的变量。分别是$@，$^，$<代表的意义分别是： 
$@--目标文件，$^--所有的依赖文件，$<--第一个依赖文件。 
https://blog.csdn.net/YEYUANGEN/article/details/36898505
