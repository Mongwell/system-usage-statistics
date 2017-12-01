#!/usr/bin/env python 


file = open(file="py-input.txt", mode='r')
output = open("averages.txt", mode='a+')

coreUsageRaw = (file.readline()).split(';')
coreUsage = []
coreUsageAverage = 0

for i in range(0, len(coreUsageRaw) - 1):
    temp = coreUsageRaw[i].split(',')
    coreUsage.append(round(float(temp[0])/100.0 + float(temp[1])/100, 2))
    
for i in range(0, len(coreUsage)):
    coreUsageAverage += coreUsage[i]

coreUsageAverage /= len(coreUsage)

output.write(str(coreUsageAverage) + ", ")

coreTemps = ((file.readline()).split(","))[0:-1]
coreTempAverage = 0

for i in range(0, len(coreTemps)):
    coreTempAverage += float(coreTemps[i])

coreTempAverage /= len(coreTemps)

output.write(str(coreTempAverage) + ", ")

ramUsage = eval(file.readline())

output.write(str(ramUsage) + "\n")
