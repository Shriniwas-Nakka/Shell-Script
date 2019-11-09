#!/bin/bash -x
empCheck=$(( RANDOM %3 ))
   if [ $empCheck -eq 1 ];
      then
      Rate=20;
      Hour=8;
      Salary=$(( $Rate * $Hour ));
      echo "Employee present"
      echo "Monthly salary" $salary
   elif [ $empCheck -eq 2 ]
      then
      echo "part Time worker"
      partTimeRate=10;
      Hour=4
      Salary=$(( $partTimeRate * $Hour ));
      echo $Salary
   else
      Salary=0;
      echo "Employee absent" 
   fi
