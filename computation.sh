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
for (( j=1; j<total; j++ ))
do
		key=${Array[$j]}
                all=$(( $j-1 ))
                while (( $all>=0 && ${Array[all]}<$key ))
                do
                        Array[$all+1]=${Array[all]}
                        all=$(( $all-1 ))
                done

Array[$all+1]=$key
done
echo "Array After Descending Order"
echo ${Array[@]}


echo "numbers stored into Array"
echo ${Array[@]}
