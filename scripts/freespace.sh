#!/bin/bash

# Get the remaining free space for the current working directory
current_dir=$(pwd)
free_space=$(df -h "$current_dir" | awk 'NR==2 {print $4}')

# Print the remaining free space
echo "$free_space remaining"