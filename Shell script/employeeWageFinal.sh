#!/bin/bash -x
x=$(( RANDOM %3 ))
   if [ $x -eq 1 ];
      then
      rate=20;
      hour=8;
      salary=$(( $rate * $hour ));
      echo "Employee present"
      echo "Monthly salary" $salary
   elif [ $x -eq 2 ]
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
