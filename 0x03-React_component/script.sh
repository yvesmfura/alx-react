#!/bin/bash

# Define the repository and directory
REPO_DIR="$HOME/alx-react/0x03-React_component"
BRANCH="main"  # Change this to your branch name if it's different

# Go to the repository directory
cd "$REPO_DIR" || { echo "Failed to cd into $REPO_DIR"; exit 1; }

# List all files to commit with their corresponding commit messages
declare -A files=(
    # Task 0
    ["task_0/dashboard/src/App/App.js"]="Convert App function to React Class"
    # Task 1
    ["task_1/dashboard/src/App/App.js"]="Add lifecycle methods and logOut prop in App component"
    ["task_1/dashboard/src/App/App.test.js"]="Add test for logOut functionality and key event"
    # Task 2
    ["task_2/dashboard/src/Notifications/Notifications.js"]="Convert Notifications component to class and add markAsRead method"
    ["task_2/dashboard/src/Notifications/Notifications.test.js"]="Add tests for markAsRead method"
    ["task_2/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem to handle markAsRead"
    ["task_2/dashboard/src/Notifications/NotificationItem.test.js"]="Add tests for NotificationItem component"
    # Task 3
    ["task_3/dashboard/src/BodySection/BodySection.js"]="Create BodySection component"
    # Task 4
    ["task_3/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Create BodySectionWithMarginBottom component"
    ["task_3/dashboard/src/BodySection/BodySectionWithMarginBottom.css"]="Add styling for BodySectionWithMarginBottom"
    # Task 5
    ["task_3/dashboard/src/App/App.js"]="Use BodySectionWithMarginBottom for CourseList and Login"
    # Task 6
    ["task_3/dashboard/src/BodySection/BodySection.test.js"]="Add test for BodySection component"
    ["task_3/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Add test for BodySectionWithMarginBottom component"
    # Task 7
    ["task_4/dashboard/src/HOC/WithLogging.js"]="Create WithLogging HOC"
    # Task 8
    ["task_4/dashboard/src/HOC/WithLogging.test.js"]="Add tests for WithLogging HOC"
    # Task 9
    ["task_5/dashboard/src/Notifications/NotificationItem.js"]="Optimize NotificationItem with pure component update"
    # Task 10
    ["task_5/dashboard/src/Notifications/Notifications.js"]="Optimize Notifications component with shouldComponentUpdate"
    # Task 11
    ["task_5/dashboard/src/Notifications/Notifications.test.js"]="Add tests for Notifications component updates"
)

# Loop through the files and add them to the staging area with their corresponding commit messages
for file in "${!files[@]}"; do
    if git add "$file"; then
        git commit -m "${files[$file]}"
    else
        echo "Failed to add $file"
    fi
done

# Increase Git buffer size
git config --global http.postBuffer 157286400  # 150 MB

# Push the changes to the remote repository
if git push origin "$BRANCH"; then
    echo "Pushed changes to $BRANCH"
else
    echo "Failed to push changes to $BRANCH"
    exit 1
fi

