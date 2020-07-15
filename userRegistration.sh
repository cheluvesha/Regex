#!/bin/bash -x
read -p "Enter the first name:" firstName
patternForFirstName="^[[ :upper: ]]{1}[[ :lower: ]]{2,}$"
if [[ $firstName =~ $patternForFirstName ]]
then
        echo Valid
else
        echo Invalid
fi
