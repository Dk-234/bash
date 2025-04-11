#!/bin/bash

# Function to calculate the number of files
function count_files {
  echo $(ls -1 | wc -l)
}

# Main script
file_count=$(count_files)
guess=-1

echo "Welcome to the Guessing Game!"
while [[ $guess -ne $file_count ]]; do
  echo "How many files are in the current directory?"
  read guess

  if [[ $guess -eq $file_count ]]; then
    echo "Congratulations! You guessed it right!"
  elif [[ $guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
done
