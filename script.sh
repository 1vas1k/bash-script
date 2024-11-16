#!/bin/bash

# Generate five  random numbers and then write them to file
output_file="random_numbers.txt"
echo "Generate five random numbers..."
for i in {1..5}; do
  echo $((RANDOM % 1000 + 1)) >> "$output_file"
done

# Log generated numpers in terminal
echo "Generated numbers:"
cat "$output_file"

# Finding the smallest number
min_number=$(sort -n "$output_file" | head -n 1)

# Remove all values expact the smallest one
echo "$min_number" > "$output_file"

# Log the result to the terminal
echo "Minimal number:"
cat "$output_file"
