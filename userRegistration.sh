#!/bin/bash -x
shopt -s extglob
read -p "Enter your password:" password
patternForPassword="^[0-9A-Za-z]*[!@#$%&][A-Za-z0-9]*$"
if [[ $password =~ $patternForPassword ]]
then
        echo Valid
else
        echo Invalid
fi




