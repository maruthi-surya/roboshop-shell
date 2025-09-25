#!/bin/bash

dir_path=$(pwd)

echo "Directory Path: $dir_path"

file=$( echo $0 | cut -d "." -f1 )

echo "File: $file"

file_name= ( $dir_path/$file.log )

echo "File Name: $file_name"