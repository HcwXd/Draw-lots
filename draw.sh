#!/usr/bin/env bash

num_of_chosen=1
num_of_lots=0
collection=()

checknumber(){
	if [[ $1 =~ ^-?[0-9]+$ ]] ; then
		return
	else
		>&2 echo "please input integer"
		exit 2
	fi
}

while [[ $# -gt 0 ]]; do
	if [[ $1 == -n ]] ; then
		checknumber $2
		num_of_chosen=$2
		shift
	else
		collection+=("$1")
		(( num_of_lots++ ))
	fi
	shift
done

if [[ $num_of_chosen -gt $num_of_lots ]] ; then
	echo "number of choice exceeds number of lots"
	exit 2
fi

draw_index=($(for ((i=0;i<$num_of_lots;i++));do echo "$i $RANDOM";done|sort -k2n|cut -d" " -f1))


while [[ $num_of_chosen -gt 0 ]] ; do
	echo ${collection[${draw_index[num_of_chosen]}]}
	num_of_chosen=$(( num_of_chosen - 1 ))
done
