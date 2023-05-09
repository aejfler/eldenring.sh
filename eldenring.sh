#!/bin/bash

echo "Welcome in Elden Ring tarnished!. Please select your starting character:
1 - Samurai
2 - Prisoner
3 - Prophet"

read character

case $character in 
	1)
		type="Samurai"
		hp=100
		attack=20
		;;
	2) 
		type="Prisoner" 
                hp=30
                attack=5 
                ;; 
	3)
		type="Prophet" 
                hp=50
                attack=10 
                ;; 
esac

echo "You've chosen the $type character. Your HP is $hp and your attack is $attack."
sleep 1

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

if [[ $beast == $tarnished || $tarnished == "cheatcode" ]]; then
	echo "You've smashed it! Victory suits you!! Congrats"
	attack=$((attack + 10))

	echo "Your attack strenghten and now is $attack"
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
        if [[ $USER == "root" ]]; then
		echo "You've concured Margit! Earned respect on battlefield!! Congrats"
	fi
	attack=$((attack + 20))
	echo "Your attack strenghten and now is $attack"


else
        echo "Margit smashed you!!! You died!"
        exit 1
fi
