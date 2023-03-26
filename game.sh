#!/bin/bash

SNAKE="\u25A0"
S_HEAD="\u25A1"
ROWS=$(tput lines)
COLS=$(tput cols)


echo "Creating snake world with $COLS column and $ROWS rows"
read -p "press any key to continue"

myarr=($SNAKE $SNAKE "\u25A1" "\n"
	$S_HEAD $S_HEAD $S_HEAD "\n"
	$S_HEAD $S_HEAD  $S_HEAD "\n"
	)
myarr2=($SNAKE $S_HEAD $S_HEAD "\n"
	$S_HEAD $S_HEAD $S_HEAD "\n"	
	$S_HEAD $S_HEAD $S_HEAD "\n"		
)

clear 

for i in {0..9}
do
	printf "%b" $SNAKE
	if [ $(expr $i % 3) -eq 0 ]
	then
		printf "\n"
	fi
done
sleep 0.5
clear

for i in {0..9}
do
     printf "%b" $S_HEAD
     # read -p "Waiting for your command cheif" cmd
     if [ $(expr $i % 3 ) -eq 0 ]
     then
	     printf "\n"
     fi
     
done

sleep 0.5
tput cup 12 12
printf "%b" $S_HEAD
sleep 2
exit 0

