#!/bin/bash

echo "Script execution started: $(date)"
dir_path=$(pwd)/logs #get the current working directory
   echo "dir-path: $dir_path"

dest_dir=$(pwd)/dest
 if [ ! -d $dest_dir ]; then
  echo "dest directory doesn't exist"
  exit 1
fi
zip_path=$dest_dir/app-log.zip
 echo "ZiP-Path: $zip_path"

if [ ! -d $dir ]; then
 echo "dircotry doesn't exist"
fi

file_name=$0 #get current file name
curr_date=$(date +%+4Y-%m-%d)
  echo "Date: $curr_date"
  echo "File-Name: $file_name" # echo print the results on the screen
file=$( echo $0 | cut -d "." -f1 ) # cut command used to cut the stirng based on the delimiter -d
  echo "file: $file"
LOG_FILE="$dir_path/$file-$curr_date.log" # appending filename to the directory
  echo "Log_File: $LOG_FILE"
  echo "Directory Path: $dir_path" #| tee -a $LOG_FILE # tee command writes into the file also display
  echo "File: $file"  &>>$LOG_FILE
  echo "File Name: $LOG_FILE" &>>$LOG_FILE

if [ -f $LOG_FILE ]; then
   echo "files found"
   find $dir_path -name "*.log" -type f | zip -@ -j "$zip_path"
    if [ -f $zip_path ]; then
    echo "zip file found"
    fi
else
  echo "no files found nothing to archive"
  exit 1
fi
