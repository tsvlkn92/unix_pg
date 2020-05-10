#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment for Coursera/The Unix Workbench -- VT

function totalfile {
answer=$(ls -1 | wc -l)
echo $answer
}

echo -n "Guess! How many files in my current directory : "

tf=$(totalfile)  #Total File -> tf

read ug #User Guess

while true;
    do
		if [[ $ug -lt $tf ]]         
		 then
			echo -n "You couldn't Guess, You entered a SMALL number! :"
			read ug
		elif [[ $ug -gt $tf ]]
		 then
			echo -n "You couldn't guess, You entered a BIG number! :"
			read ug
		else
			echo "WE HAVE A WINNER! ;-) "
		break;
		fi
    done	
