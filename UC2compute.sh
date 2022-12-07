#!/bin/bash

read -p "Enter Number A:" a
read -p "Enter Number B:" b
read -p "Enter Number C:" c

answer1=$(($a + $b * $c))
echo "$answer1"
