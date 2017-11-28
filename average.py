#!/usr/bin/env python 


file = open(file="py-input.txt", mode='r')

coreUsageRaw = (file.readline()).split(';')
coreUsage = []

for i in range(0, 8):
    coreUsage.append(coreUsageRaw[i].split(','))

print(coreUsage)

coreTemps = ((file.readline()).split(","))[0:-1]

print(coreTemps)

ramUsage = eval(file.readline())

print(ramUsage)
