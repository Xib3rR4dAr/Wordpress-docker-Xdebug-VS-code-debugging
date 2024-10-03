#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <project_name>"
  exit 1
fi

# Get the project name from the command line argument
project_name="$1"

# Check if the folder already exists
if [ -d "$project_name" ]; then
  echo "Error: Folder '$project_name' already exists. Please choose a different name."
  exit 1
fi

# Copy the entire folder to the same directory with the specified name
cp -r TemplateDocker "$project_name"

# Replace "AVADAHERE" with the project name in all files
sed -i "s/PROJECTNAME/$project_name/g" "$project_name/docker/docker-compose.yml"

echo "New project '$project_name' created successfully."
