#! /bin/bash

Peeta.sh Peeta > /tmp/flex
while read line
do
	printf "%s\n" "$line"
	sleep 3
done < /tmp/flex
