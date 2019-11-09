#!/bin/bash -x
empCheck=$(( RANDOM %3 ))
   if [ $empCheck -eq 1 ];
      then
      rate=20;
      hour=8;
      salary=$(( $rate * $hour ));
      echo "Employee present"
      echo "Monthly salary" $salary
   elif [ $empCheck -eq 2 ]
      then
      echo "parttime worker"
      parttimerate=10;
      hour=4
      salary=$(( $parttimerate * $hour ));
      echo $salary
   else
      salary=0;
      echo "Employee absent" 
   fi
