
#!/bin/bash
# file: guessinggame.sh

#This program ask the user to guess how many files are in the current directory


clear

r1=$[($RANDOM % 50) +1]
guess=1
echo -n "Guess the number of files in the current directory between 1 and 50. What is your guess:"

while read r2; do

if   [[ $r2 -eq $r1 ]]; then
break;  
else
echo    
if [[ $r2 -gt $r1 ]]; then 
echo -n "Nope, your guess is too high:" 
elif [[ $r2 -lt $r1 ]]; then
echo -n "Nope, your guess is too low:"
fi      
fi
guess=$((guess+1))
echo -n " Close, but no cigar try again:"
done
echo
echo "Congratulations! It only took you $guess guesses to guess the right number of files in the cuurent directory."


