#查看文件大小
du -sh * | sort -n
#查看哪个文件包含指定文本内容
grep -rn "hello,world!" *

#开机自启配置eth0网口
sudo nano /etc/rc.local
echo fa | sudo -S ifconfig eth0 192.168.66.99
