#!/bin/bash -x
x=$(( RANDOM %2 ))
if [ $x == 1 ];
then
echo employee present
else
echo employee absent 
fi
