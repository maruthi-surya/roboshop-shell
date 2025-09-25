#!/bin/bash

echo "Script started at: $(date))"

number=$1

if [ $number -le 10 ]; then

  echo "the given $number is less or equal to 10"

else

echo "the given $number is greater than 10"
fi

echo "Script ended at: $(date)"