#!/bin/bash -x
empCheck=$(( RANDOM %3 ))
   if [ $empCheck -eq 1 ];
      then
      Rate=20;
      Hour=8;
      Salary=$(( $Rate * $Hour ));
      echo "Employee present"
      echo "Monthly salary" $Salary
   elif [ $x -eq 2 ]
      then
      echo "parttime worker"
      partTimeRate=10;
      Hour=4
      Salary=$(( $partTimeRate * $Hour ));
      echo $Salary
   else
      Salary=0;
      echo "Employee absent!"
   fi
