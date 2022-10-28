#!/bin/bash -x

function my_func()
{
	result=$(($a*$b))
		echo $result

}
echo "Enter 2 number: "
read a
read b
my_func $a $b
echo "result of multiplication is :" $result


