#!/bin/bash

read -p "enter number1: " num1
read -p "enter number2: " num2
read -p "enter number3: " num3

result3=$(( $num3 + $num1 / $num2 ))

echo "result is $result3"
