#!/bin/bash

# Start date (modify if you want to start on a different day)
start_date="2024-09-09"

# Loop through each day of the year
for i in {0..364}
do
    # Calculate the date for each iteration
    current_date=$(date -j -v+${i}d -f "%Y-%m-%d" "$start_date" "+%Y-%m-%d")

    # Create a placeholder file or modify an existing file
    echo "Commit for $current_date" > commit.txt

    # Add the file to the staging area
    git add .

    # Make a commit with the current date as the commit date
    GIT_COMMITTER_DATE="$current_date 12:00:00" git commit --date="$current_date 12:00:00" -m "Commit on $current_date"
done
