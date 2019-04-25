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

1.原始gcc MAKEFILE
gcc -c main.c 
gcc -c mytool1.c 
gcc -c mytool2.c 
gcc -o main main.o mytool1.o mytool2.o

2.
main：main.o mytool1.o mytool2.o 
gcc -o main main.o mytool1.o mytool2.o 
main.o：main.c mytool1.h mytool2.h 
gcc -c main.c 
mytool1.o：mytool1.c mytool1.h 
gcc -c mytool1.c 
mytool2.o：mytool2.c mytool2.h 
gcc -c mytool2.c

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
在Makefile中最重要的是描述文件的依赖关系的说明。
格式:第一行表示的是依赖关系。第二行是规则。
target：components 
TAB rule 

比如说我们上面的那个Makefile文件的第二行。 
main：main.o mytool1.o mytool2.o 
表示我们的目标(target)main的依赖对象(components)是main.o mytool1.omytool2.o 
当倚赖的对象在目标修改后修改的话，就要去执行规则一行所指定的命令。
就象我们的上面那个Makefile第三行所说的一样要执行 
gcc-o main main.o mytool1.o mytool2.o 注意规则一行中的TAB表示那里是一个TAB键 

Makefile有三个非常有用的变量。分别是$@，$^，$<代表的意义分别是： 
$@--目标文件，$^--所有的依赖文件，$<--第一个依赖文件。 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

3。简化后的Makefile 
main：main.o mytool1.o mytool2.o 
gcc -o $@ $^ 
main.o：main.c mytool1.h mytool2.h 
gcc -c $< 
mytool1.o：mytool1.c mytool1.h 
gcc -c $< 
mytool2.o：mytool2.c mytool2.h 
gcc -c $< 

4.经过简化后,我们的Makefile是简单了一点，不过人们有时候还想简单一点。这里我们学习一个Makefile的缺省规则 
	.c.o： 
	gcc -c $< 
这个规则表示所有的 .o文件都是依赖与相应的.c文件的。例如mytool.o依赖于mytool.c这样Makefile还可以变为： 
再次简化后的Makefile 
	main：main.o mytool1.o mytool2.o 
	gcc -o $@ $^ 
	.c.o： 
	gcc -c $< 


**********************************************************************************************
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
