#!/bin/bash -x
shopt -s extglob
read -p "Enter your password:" password
PatternForPassword="^[0-9A-Za-z]+[0-9]*[A-Za-z0-9]*$"
if [[ $password =~ $patternForPassword ]]
then
        echo Valid
else
        echo Invalid
fi
