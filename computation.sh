#!/bin/bash

read -p "enter number1: " num1
read -p "enter number2: " num2
read -p "enter number3: " num3

result1=$(( $num1 + $num2 * $num3 ))

echo "result is $result1"
