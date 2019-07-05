#!/bin/bash

proxychains google-chrome  > /dev/null &
#请开启ss slocal
sslocal -c /home/pzx/pzx_github/gitgo/git_go/ss_proxy/cg.json  

