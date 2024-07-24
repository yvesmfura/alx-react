#!/bin/bash

# Define the repository and directory
REPO_DIR="$HOME/alx-react/0x00-Webpack"
REPO_NAME="alx-react"
BRANCH="main"  # Change this to your branch name if it's different

# Go to the repository directory
cd "$REPO_DIR" || exit

# List all files to commit with their corresponding commit messages
declare -A files=(
    ["task_0/package.json"]="Add package.json for task 0"
    ["task_0/src/index.js"]="Add index.js for task 0"
    ["task_0/dist/index.html"]="Add index.html for task 0"
    ["task_1/js/dashboard_main.js"]="Add dashboard_main.js for task 1"
    ["task_1/package.json"]="Add package.json for task 1"
    ["task_1/webpack.config.js"]="Add webpack.config.js for task 1"
    ["task_1/public/index.html"]="Add index.html for task 1"
    ["task_2/package.json"]="Add package.json for task 2"
    ["task_2/css/main.css"]="Add main.css for task 2"
    ["task_2/webpack.config.js"]="Add webpack.config.js for task 2"
    ["task_2/js/dashboard_main.js"]="Add dashboard_main.js for task 2"
    ["task_2/public/index.html"]="Add index.html for task 2"
    ["task_3/modules/body/body.css"]="Add body.css for task 3"
    ["task_3/modules/body/body.js"]="Add body.js for task 3"
    ["task_3/modules/footer/footer.css"]="Add footer.css for task 3"
    ["task_3/modules/footer/footer.js"]="Add footer.js for task 3"
    ["task_3/modules/header/header.css"]="Add header.css for task 3"
    ["task_3/modules/header/header.js"]="Add header.js for task 3"
    ["task_3/package.json"]="Add package.json for task 3"
    ["task_3/webpack.config.js"]="Add webpack.config.js for task 3"
)

# Loop through the files and push each with its commit message
for file in "${!files[@]}"; do
    git add "$file"
    git commit -m "${files[$file]}"
done

# Increase Git buffer size
git config --global http.postBuffer 157286400  # 150 MB

# Push the changes to the remote repository
git push origin "$BRANCH"

