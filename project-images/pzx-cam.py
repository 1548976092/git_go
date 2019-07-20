# -*- coding: utf-8-*-

import os
import subprocess

device='/dev/video0'
command = ['fswebcam', '--no-banner', '-r', '640x480', '-q', '-d', device]

dest_file = '/home/pi/project/images/pzx_cam.jpg' 
command.append(dest_file)

print(command)

#subprocess.run("echo 'hi'",shell=True)

subprocess.run(command, shell=False, check=True)

