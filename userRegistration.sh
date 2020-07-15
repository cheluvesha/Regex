#!/bin/bash -x
function validFirstname() { 
read -p "Enter the first name:" firstName
patternForFirstName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $firstName =~ $patternForFirstName ]]
then
        echo "Valid Firstname"
else
        echo "Invalid Firstname Please give an appropriate one"
fi
}

function validLastname() {
read -p "Enter the last name:" lastName
patternForLastName="^[[:upper:]]{1}[[:lower:]]{2,}$"
if [[ $lastName =~ $patternForLastName ]]
then
        echo "Valid Lastname"
else
        echo "Invalid Lastname Please give an appropriate one"
fi
}

function validEmail() {
read -p "Enter your email id ex: abc.xyz.bl.com :" emailId
patternForEmailId="^[a-zA-Z]([.]{0,1}[a-zA-Z0-9]*){0,1}[@]{0,1}[a-z]{2,}([.]{0,1}[a-z]{3,})([.][a-bxy])?"
if [[ $emailId =~ $patternForEmailId ]]
        then
                echo "Valid Email"
        else
                echo "Invalid Email"
fi

}
function validMobileNumber() {
COUNTRY_CODE=91
read -p "Enter your mobile number:" mobileNumber
patternForMobileNumber="^$COUNTRY_CODE[ ]{0,1}[6-9]{1}[0-9]{9}"
if [[ $mobileNumber =~ $patternForMobileNumber ]]
        then
                echo "Valid Mobile Number"
        else
                echo "Invalid Mobile Number"
fi
}
function validPassword() {
read -p "Enter your password:" password
patternForPassword="^.{8,}"
patternForPassword2="[A-Z]{1,}"
patternForPassword3="[0-9]{1,}"
patternForPassword4="^[0-9A-Za-z]*[!@#$%&][A-Za-z0-9]*$"
if [[ $password =~ $patternForPassword ]]
then
        if [[ $password =~ $patternForPassword2 ]]
        then
                if [[ $password =~ $patternForPassword3 ]]
                then
                        if [[ $password =~ $patternForPassword4 ]]
                        then
                                echo Valid
                        else
                                        echo "Invalid password. password should contain exactly one special character"
                        fi
                        else
                                echo "Invalid password. password should at least one numeric character"
                        fi
                else
                        echo "Invalid password. password should contain at least one Uppercase alphabet"
                fi
else
        echo "Invalid password. password should be of minimum 8 characters"
fi
}
validFirstname
validLastname
validEmail
validMobileNumber
validPassword

