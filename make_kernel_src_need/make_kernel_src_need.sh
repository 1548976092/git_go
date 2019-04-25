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


gcc编译参数：

-S 预处理和编译，文件编译成为汇编代码                用法:gcc -S hello.c
-c 预处理和编译,和汇编,也就是他只把程序做成obj文件   用法:gcc -c hello.c 
-o 制定目标名称, 缺省时,gcc 编译出a.out 用法:gcc -o hello hello.c ； gcc -o hello.asm -S hello.c
-E 预处理,不生成文件, 把它重定向到一个文件。用法:gcc -E hello.c > pianoapan.txt gcc -E hello.c | more 
-pipe 使用管道代替编译中临时文件, 在使用非 gnu 汇编工具的时候 gcc -pipe -o hello  hello.c 

-static 此选项将禁止使用动态库，所以，编译出来的东西，一般都很大，也不需要什么动态连接库，就可以运行。
-share　此选项将尽量使用动态库，所以生成文件比较小，但是需要系统由动态库。

-w	不生成任何警告信息。
-Wall	生成所有警告信息。
