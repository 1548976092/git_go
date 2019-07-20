
# -*- coding: utf-8-*-

import os
import subprocess
import time
import schedule

i=0
device='/dev/video0'


subprocess.run("echo 'hi'",shell=True)
command = ['fswebcam', '--no-banner', '-r', '640x480', '-q', '-d', device]  
def test():
        global i
        i=i+1

        dest_file = '/home/pi/project/images/%03d.jpg'%(i)
        command.append(dest_file)
        print(command)
        subprocess.run(command, shell=False, check=True)
        command.pop()

schedule.every(1).seconds.do(test)


while True:
    # 启动服务
    schedule.run_pending()
    time.sleep(1)
