#!/bin/bash

# Script to add, commit, and push code to Git
# Usage: ./git_update.sh "Your commit message"

# Check if a commit message was provided
if [ -z "$1" ]; then
  echo "Error: Please provide a commit message."
  echo "Usage: ./git_update.sh \"Your commit message\""
  exit 1
fi

# Define the commit message
commit_message="$1"

# Check the current git status
echo "Checking git status..."
git status

# Add all changes to the staging area
echo "Adding changes..."
git add .

# Commit the changes with the provided commit message
echo "Committing changes..."
git commit -m "$commit_message"

# Push the changes to the remote repository
echo "Pushing changes to the remote repository..."
git push -u origin main

# Completion message
echo "Code successfully updated in the Git repository."

