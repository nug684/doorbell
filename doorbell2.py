from gpiozero import Button
from time import sleep
import os, signal
import time
import subprocess


button = Button(14)
oldbuttonvalue = 0
while True:
    if button.value != oldbuttonvalue:
        print("Button was pushed!")
        subprocess.run(["/home/pi/scripts/doorbell-action.sh"])
        oldbuttonvalue = button.value
    sleep(0.2)

