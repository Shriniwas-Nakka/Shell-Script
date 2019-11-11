#!/bin/bash -x
valid=true
isFullTime=1;
is PartTime=2;
rateHour=20;
while [ $valid ]
do
	random=$(( RANDOM %3 ))
	case $random in
		$isFullTime)
		employeeHr=8;;
		$isPartTime)
		employeeHr=4;;
		*)
		employeeHr=0;;
	esac
	salary=$(( $employeeHr * $rateHour ))
	totalHours=$(( $totalHours + $employeeHr ))
	if [ $totalHours -ge 50 ]
	then
		break
	fi
done
