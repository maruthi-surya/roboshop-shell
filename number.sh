#!/bin/bash
start_time=$(date +%s)

echo "Start time: $start_time"

number=$1

if [ $number -le 10 ]; then

  echo "the given $number is less or equal to 10"

else

echo "the given $number is greater than 10"
fi

end_time=$(date +%s)

echo "End_time: $end_time"

execution_time=$(( $start_time - $end_time ))

echo "Execution Time: $execution_time"