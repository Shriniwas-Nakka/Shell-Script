#!/bin/bash -x
isPartTime=1;
isFullTime=2;
rate=20;
employeeCheck=$(( RANDOM %3 ))
	case $employeeCheck in
		$isFullTime)
		#echo "Full Time"
			hour=4;;
		$isPartTime)
		#echo "Part Time"
			hour=2;;
		*)
		#echo "Absent"
			hour=0;;
	esac
salary=$(( $hour * $rate ))
#echo "Monthly salary" $salary
