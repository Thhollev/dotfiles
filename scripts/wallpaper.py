#!/bin/env python3

import os, time, subprocess, random, sys

interval = 5
wp_path = '/home/thomas/wallpapers/'
files = os.listdir(wp_path)
random.shuffle(files)

try:
    for f in files:
        subprocess.Popen("feh --bg-fill \"{}{}\"".format(wp_path, f), shell=True, close_fds=True)
        time.sleep(60*int(interval))

except KeyboardInterrupt: sys.exit(0)
