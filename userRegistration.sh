#!/bin/bash -x
read -p "Enter Email to Check: " email
patternemail="^[A-Za-z+.-]+(\\.[0-9]+)*@[A-Za-z]+(\\.[A-Za-z]+)*(\\.[A-Za-z]{2,})?$"
if [[ $email =~ $patternemail ]]
then
        echo "Valid"
else
        echo "Not Valid"
fi
