#!/usr/bin/bash
read -p "Enter Your Username : " Username
echo "Your  Username is Username : $Username"
if [ -z $username]; then
   echo: "Error: Username cannot be empty!"
   exit 2
fi



