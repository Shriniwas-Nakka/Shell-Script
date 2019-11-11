#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRatePerHr=20;
workingDays=20;

totalWorkingHours=0;
totalWorkingDays=0;

function myFunc() {
	#echo $1
	case $1 in
	$isFullTime)
		hour=8;;
	$isPartTime)
		hour=4;;
	*)
		hour=0;;
	esac
	totalWorkingHour=$(( $hour + $empRatePerHr ))
}

#result="$( myFunc $(( RANDOM%3 )) )"
for (( counter=1; counter<=20; counter++ ))
do
	result="$( myFunc $(( RANDOM%3 )) )"
done
