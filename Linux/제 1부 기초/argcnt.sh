#! /bin/bash -
# Cybersecurity Ops with bash
# argcnt.sh

echo "there are $# arguments"

i=1
for MYARGS
do
	if (( $i % 2 == 0 ))
	then
		echo "arg$i : $MYARGS"
		let i++
	fi
done
