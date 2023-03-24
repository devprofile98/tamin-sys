#!/bin/bash

SNAKE="\u25A0"

echo "Creating snake world"
for i in {1..3}
do
	printf .
	sleep 0.5
	printf "\c"
	sleep 0.5
done


printf "%b\n" $SNAKE
