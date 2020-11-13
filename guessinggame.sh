#!/usr/bin/env bash
# File: guessinggame.sh

win=0
function where {
    if [[ $1 -gt $( ls -a | wc -l ) ]]; then
        echo '---> Too high'
    else
        echo '---> Too low'
    fi
}

echo ''
echo ''
echo '~========= Welcome to the Guessing Game! =========~'
echo ''
echo '> Guess how many files (including hidden files and directories) are'
echo '> in the current directory:'
echo ''

while [[ win -eq 0 ]]; do
    read guess
    if [[ $guess -eq $( ls -a | wc -l ) ]]; then
        let win=1
        echo ''
        echo '--- You got it! The files are: ---'
        echo ''
        ls -a
        echo ''
        echo '~==== Thanks for playing. ====~'
        echo ''
    else
        where $guess
        echo ''
        echo 'Try again:'
    fi
done

