#!/bin/bash

# Accept first name as command-line argument
first_name="$1"

# Check if name was provided
if [ -z "$first_name" ]; then
  echo "Usage: $0 <firstname>"
  exit 1
fi

# Prompt for age and city
read -p "Enter your age: " age
read -p "Enter your city: " city

# Get current date using command substitution
current_date=$(date +%Y-%m-%d)

# Display summary
echo "-----------------------------"
echo "Profile created on: $current_date"
echo "Name: $first_name"
echo "Age: $age"
echo "City: $city"
echo "Script executed from: $(pwd)/$0"
echo "-----------------------------"
