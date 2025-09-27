#!/bin/bash

dir_path=$(pwd)
file_name=$0
 echo "File-Name: $file_name"
file=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$dir_path/$file.log"
echo "Directory Path: $dir_path" | tee -a $LOG_FILE
echo "File: $file"  &>>$LOG_FILE
echo "File Name: $LOG_FILE" &>>$LOG_FILE