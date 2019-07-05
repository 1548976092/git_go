#!/bin/bash

sudo apt-get install proxychains
sudo apt-get install shadowsocks
#安装完毕后，修改/etc/proxychains.conf中的内容，在最后[ProxyList]选项里填入ss的信息
#socks5 127.0.0.1 1080

