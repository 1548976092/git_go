
# -*- coding: utf-8-*-

import os
import subprocess
import time
import schedule

device='/dev/video0'


subprocess.run("echo 'hi'",shell=True)
command = ['ffmpeg', '-r',' 30','-i','./images/%03d.jpg','-vf','fps=30','/var/www/html/live/live.mp4']  

def test():

        print(command)
        subprocess.run(command, shell=False, check=True)
        command.pop()

schedule.every(1).minutes.do(test)



while True:
    # 启动服务
    schedule.run_pending()
    time.sleep(1)
