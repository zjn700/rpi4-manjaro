import os

def get_cpu_temp():
  cpu_temp = os.popen("cat /sys/class/thermal/thermal_zone0/temp").readline()
  cpu_temp = [int(s) for s in cpu_temp.split() if s.isdigit()]
  cpu_temp = int(cpu_temp[0]/1000)
  print(cpu_temp)
  return cpu_temp

get_cpu_temp()  
