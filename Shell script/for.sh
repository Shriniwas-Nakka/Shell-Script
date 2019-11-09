#!/bin/bash -x
isPartTime=1;
isFullTime=2;
rate=20;
numberOfDay=20;
#employeeCheck=$(( RANDOM %3 ))
for (( counter=1; counter<=$numberOfDay; counter++ ))
do
	employeeCheck=$(( RANDOM %3 ))
	if [ $isFullTime -eq $employeeCheck ]
	then
	hour=8;
	elif [ $isPartTime -eq $employeeCheck ]
	then
	hour=4
	else
	hour=0
   fi
#done
perDaySalary=$(( $hour * $rate ))
monthlySalary=$(( $monthlySalary + $perDaySalary ))
done
totalSalary=$monthlySalary
