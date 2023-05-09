#!/bin/bash

echo "The battle is comming"
sleep 1

echo "*...."
sleep 1

echo " **..."
sleep 1

echo "  ***.."

sleep 1
echo "   ****."

#BATTLE NO 1

beast=$(( $RANDOM % 2 ))

echo "Your battle starts now!!! Pick a number 0 or 1 ( 0 / 1)"

read tarnished

if [[ $beast == $tarnished ]]; then
	echo "You've smashed it! Victory suits you!! Congrats"
else
	echo "You died miserably"
	exit 1
fi

sleep 2

echo "Prepare for the fight with Margit!!!"
echo "....."
echo "Your battle starts now!!! Pick a number 0 between 10"

read tarnished

beast=$(( $RANDOM % 10 ))

if [[ $beast == $tarnished ]]; then
        echo "You've concured Margit! Earned respect on battlefield!! Congrats"
else
        echo "Margit smashed you like a piece of ****!!! Good bye!"
        exit 1
fi
