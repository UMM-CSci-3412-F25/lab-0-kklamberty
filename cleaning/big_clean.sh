#!/bin/bash

# Check if exactly one argument is provided
# This block checks if the number of arguments ($#) is not equal to 1. If it's not, it prints a usage message and exits with an error code (1).
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <your_argument>"
  exit 1
fi

# Store the first argument in a variable for clarity
input_argument="$1"

# Print a message using the provided argument
echo "You provided the argument: $input_argument"

