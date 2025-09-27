#!/bin/bash

dir_path=$(pwd)/logs #get the current working directory
echo "dir-path: $dir_path"
file_name=$0 #get current file name
 echo "File-Name: $file_name" # echo print the results on the screen
file=$( echo $0 | cut -d "." -f1 ) # cut command used to cut the stirng based on the delimiter -d
LOG_FILE="$dir_path/$file.log" # appending filename to the directory
echo "Directory Path: $dir_path" | tee -a $LOG_FILE # tee command writes into the file also display
echo "File: $file"  &>>$LOG_FILE
echo "File Name: $LOG_FILE" &>>$LOG_FILE
dir="./logs"
if [ -d $dir ]; then
 echo "directory exists"
else
 echo "dircotry doesn't exist"
fi
curr_date=$(date +%+4Y-%m-%d)
 echo "Date: $curr_date"