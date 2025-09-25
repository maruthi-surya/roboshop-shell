#!/bin/bash

dir_path=$(pwd)
file=$( echo $0 | cut -d "." -f1 )
file_name="$dir_path/$file.log"
echo "Directory Path: $dir_path" | tee -a $LOG_FILE
echo "File: $file"  | tee -a $LOG_FILE
echo "File Name: $file_name" | tee -a $LOG_FILE