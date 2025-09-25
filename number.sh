#!/bin/bash

number=$@

if( $number -le 10 ); then

  echo "$1 is less or equal to 10"

else

echo "$1 is greater than 10"
fi