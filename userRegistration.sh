#!/bin/bash
read -p "Enter the last name:" lastName
patternForLastName="^[[ :upper: ]]{1}[[ :lower: ]]{2,}$"
if [[ $lastName =~ $patternForLastName ]]
then
        echo Valid
else
        echo Invalid
fi

