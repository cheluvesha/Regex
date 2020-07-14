#!/bin/bash -x
read -p "Enter your password:" password
patternForPassword="^.{8}$"
if [[ $password =~ $patternForPassword ]]
        then
                echo Valid
        else
                echo Invalid
fi

