import os
import sys
import time


def get_cpu_temp():
    while True:
        cpu_temp = os.popen(
            "cat /sys/class/thermal/thermal_zone0/temp").readline()
        cpu_temp = [int(s) for s in cpu_temp.split() if s.isdigit()]
        cpu_temp = int(cpu_temp[0]/1000)
        print(f'{cpu_temp}\r', end="")
        time.sleep(5)
    return cpu_temp


get_cpu_temp()
