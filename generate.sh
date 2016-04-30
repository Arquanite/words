#!/bin/bash
while true
do
A=$(shuf -n 1 ./przymiotniki)
B=$(shuf -n 1 ./rzeczowniki)
C=$(shuf -n 1 ./te_trzecie)
X=$(echo $B | rev | cut -c -1)
if [ $X = 'a' ]
then
	Y='a'
elif [ $X = 'o' ]
then
	Y='e'
else
	Y='y'
fi
read -p "$A$Y $B $C"
done
