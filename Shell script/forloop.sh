#!/bin/bash

for file in `ls *.txt`;
do
	foldername=`echo $file | awk -F. '{ print $1 }'`;
	ext=`echo $file | awk -F. '{ print $2 }'`;
	if [ -d $foldername ];
	then
	rm -r $foldername;
	#echo folder removed $foldername;
	fi
	mkdir $foldername;
	#echo folder created $foldername;

	d=`date +"%d%m%y"`;
	#echo $ext;
	cp $file $foldername/$foldername-$d.$ext;
	#echo files copied;
done

