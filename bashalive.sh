#!/bin/bash
for (( num=1; num<=11; num++ ))
do
	name=`printf "dl%02d.mpwteach.com" $num`
	ping -c 1 $name > /dev/null 2>&1 
	if [ $? -eq 0 ]; then
		echo $name ": alive"
	else
		echo $name ": dead"
	fi
done
exit 0
