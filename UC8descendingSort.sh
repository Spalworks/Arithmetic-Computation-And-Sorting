#!/bin/bash

read -p "Enter Number A:" a
read -p "Enter Number B:" b
read -p "Enter Number C:" c

answer1=$(($a + $b * $c))
echo "$answer1"

answer2=$(($a * $b + $c))
echo "$answer2"

answer3=$(($c + $a / $b))
echo "$answer3"

answer4=$(($a % $b + $c))
echo "$answer4"

declare -A Result
Result[0]="$answer1"
Result[1]="$answer2"
Result[2]="$answer3"
Result[3]="$answer4"

echo "Result=${Result[@]}"

for ((i=0; i<4; i++));
do
	array[$i]=$(( ${Result[$i]} ))
done

echo "array=${array[@]}"

echo "Sorted Array Value in Decending Order"
printf '%s\n' "${array[@]}" | sort -nr
