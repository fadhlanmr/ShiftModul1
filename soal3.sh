#!/bin/bash

i=1
for file in password*.txt
do
	count[i]=`cat $file`
	i=$((i+1))
done
for ((j=1;j<=i;j++))
do
	if [ ! -f password$j.txt ]
	then
		pwd=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12`
		for each in count
		do
			if [ "$pwd" == "${count[each]}" ]
			then
				pwd=`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12`
			break
			fi
		done
		echo $pwd > password/password$j.txt
		break
	fi
done
