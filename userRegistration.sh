#!/bin/bash 
#UC-1
shopt -s extglob
read -p "Enter the first name:" firstName
patternForFirstName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $firstName =~ $patternForFirstName ]]
then
        echo Valid
else
        echo Invalid
fi
#UC-2
read -p "Enter the last name:" lastName
patternForLastName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $lastName =~ $patternForLastName ]]
then
        echo Valid
else
        echo Invalid
fi
#UC-3
read -p "Enter your email id:" emailId
patternForEmailId="^[a-zA-Z]([.]{0,1}[a-zA-Z0-9]*){0,1}[@]{0,1}[a-z]{2,}([.]{0,1}[a-z]{3,})([.][a-bxy])?"
if [[ $emailId =~ $patternForEmailId ]]
        then
                echo Valid
        else
                echo Invalid
fi
