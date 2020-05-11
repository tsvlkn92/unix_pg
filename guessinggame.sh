#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment for Coursera/The Unix Workbench -- VT

function totalfile {
answer=$(ls -1 |grep "^."|wc -l)
echo $answer
}

function check_int { 
re='^[0-9]+$'  
temp=$1
while ! [[ $temp =~ $re ]]  
  do 
    echo "Please Enter ONLY NUMBER!"
    read temp 
    #read $1 
  done
  ug=$temp
}

echo -n "Guess! How many files in my current directory : "

tf=$(totalfile)  #Total File -> tf

read ug #User Guess

check_int $ug

while true;
    do
		if [[ $ug -lt $tf ]]         
		 then
			echo -n "You couldn't Guess, You entered a SMALL number! :"
			read ug
			check_int $ug
		elif [[ $ug -gt $tf ]]
		 then
			echo -n "You couldn't guess, You entered a BIG number! :"
			read ug
			check_int $ug
		else
			echo "WE HAVE A WINNER! ;-) "
		break;
		fi
    done	
