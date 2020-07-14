#!/bin/bash -x
read -p "Enter your password:" password
patternForPassword="^[A-Z]{1}[a-z]{8,}$"
if [[ $password =~ $patternForPassword ]]
        then
                echo Valid
        else
                echo Invalid
fi
