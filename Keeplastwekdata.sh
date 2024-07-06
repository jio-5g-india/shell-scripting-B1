#!/bin/bash

# Directory to search for files
directory="/path/to/your/directory"

# Number of weeks - adjust as needed
weeks=4

# Calculate the cutoff time in seconds (1 week = 7 days)
cutoff=$(date -d "$weeks weeks ago" +%s)

# Find files older than cutoff and delete them
find "$directory" -type f -mtime +"$((weeks * 7))" -exec rm {} \;
