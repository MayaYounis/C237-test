#!/bin/sh






#DATE=`date +'%Y%m%d'`
#echo $DATE
#read INPUT
#echo $INPUT


#Q 1

echo 'User Name:' $USER

#Q2

DATE=`date +'%Y%m%d'`
echo 'Current Date:' $DATE

#Q3

Time=`date +'%T'`
echo 'The time is:' $Time

#Q4

Current_Directory=$(pwd)
echo  'Current Directory is:' $Current_Directory 


#Q5
Number_Of_Files=$(ls $Current_Directory | wc -l)
echo '#_of Files'  $Number_Of_Files

#Q6
Largest_File=$(du -a $pwd | sort -n | tail -1)

echo 'Largest File is :' $Largest_File


