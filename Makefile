#/usr/bin/env bash

all: README.md

README.md: 
	echo  -n "README.md created for  GuessingGame :  " >> README.md
	date >> README.md
        echo "********** VT  **************" >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md	
