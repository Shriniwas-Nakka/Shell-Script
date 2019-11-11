#!/bin/bash -x
function myFunc() {
	echo $1
}

result="$( myFunc $(( RANDOM%3 )) )"
isFullTime=1
isPartTime=2
empHr=20
for (( counter=1; counter<=20; counter++ ))
do
	result="$( myFunc $(( RANDOM%3 )) )"
	if [ $result -eq $isFullTime ]
	then
		hour=4;
		#echo "Success"
	elif [ $result -eq $isPartTime ]
	then
		hour=2;
		#echo "Failure"
	else
		hour=0;
	fi
totalHour=$(( $hour + $empHr ))
done
