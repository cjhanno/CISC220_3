#!/bin/bash

echo "Please enter a password"
read -s password
criteria=0

if (( ${#password} > 7)); then
((criteria++))
fi

if [[ ${#password} == *[1234567890]* ]]; then
((criteria++))
fi

if [[ ${#password} == *[@#$%\&*+-=]* ]]; then
((criteria++))
fi

if (( $criteria == 1 )); then
echo "Weak password"

elif (( $criteria == 2 )); then
echo "Moderate password"

elif (( $criteria == 3 )); then
echo "Strong password"

else 
echo "Please choose a more secure password (min 8 characters)"
fi
