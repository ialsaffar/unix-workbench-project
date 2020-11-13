#!/usr/bin/env bash
# File: guessinggame.sh

win=0
function where {
    if [[ $1 -gt $( ls | wc -l ) ]]; then
        echo 'you guessed too high'
    else
        echo 'you guessed too low'
    fi
}

echo 'Welcome to the Guessing Game!'
echo 'Guess how many files are in the current directory:'

while [[ win -eq 0 ]]; do
    read guess
    if [[ $guess -eq $( ls | wc -l ) ]]; then
        let win=1
        echo 'You got it!'
        echo 'Thanks for playing.'
    else
        where $guess
        echo 'Try again:'
    fi
done

