#!/bin/bash
echo "enter three numbers"
read -p "enter number1: " num1
read -p "enter number2: " num2
read -p "enter number3: " num3


result1=$(( $num1 + $num2 * $num3 ))
echo "result is $result1"

result2=$(( $num1 * $num2 + $num3 ))
echo "result is $result2"

result3=$(( $num3 + $num1 / $num2 ))
echo "result is $result3"

result4=$(( $num1 % $num2 + $num3 ))
echo "result is $result4"


declare -A dict
declare -a Array
dict[0]=$result1
dict[1]=$result2
dict[2]=$result3
dict[3]=$result4

echo "numbers in dictionary are: "
echo ${dict[@]}

total=${#dict[@]}
for (( i=0; i<4; i++ ))
do
	Array[$i]=${dict[$i]}
done

echo "numbers stored into Array"
echo ${Array[@]}
