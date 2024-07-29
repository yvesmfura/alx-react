#!/bin/bash

# Define the repository and directory
REPO_DIR="$HOME/alx-react/0x02-react_props"
BRANCH="main"  # Change this to your branch name if it's different

# Go to the repository directory
cd "$REPO_DIR" || exit

# List all files to commit with their corresponding commit messages
declare -A files=(
    ["task_0/dashboard/src/Header/Header.js"]="Add Header component"
    ["task_0/dashboard/src/Header/Header.css"]="Add CSS for Header component"
    ["task_0/dashboard/src/Header/Header.test.js"]="Add tests for Header component"
    ["task_0/dashboard/src/Footer/Footer.js"]="Add Footer component"
    ["task_0/dashboard/src/Footer/Footer.css"]="Add CSS for Footer component"
    ["task_0/dashboard/src/Footer/Footer.test.js"]="Add tests for Footer component"
    ["task_0/dashboard/src/Login/Login.js"]="Add Login component wrapped in React Fragment"
    ["task_0/dashboard/src/Login/Login.css"]="Add CSS for Login component"
    ["task_0/dashboard/src/Login/Login.test.js"]="Add tests for Login component"
    ["task_0/dashboard/src/App/App.js"]="Modify App component to include Header, Footer, and Login components"
    ["task_1/package.json"]="Add test-watch script for Jest"
    ["task_1/dashboard/src/Header/Header.test.js"]="Write tests for Header component"
    ["task_1/dashboard/src/Footer/Footer.test.js"]="Write tests for Footer component"
    ["task_1/dashboard/src/Login/Login.test.js"]="Write tests for Login component"
    ["task_1/dashboard/src/App/App.test.js"]="Write tests for App component"
    ["task_2/dashboard/src/Notifications/NotificationItem.js"]="Create NotificationItem component"
    ["task_2/dashboard/src/Notifications/NotificationItem.test.js"]="Write tests for NotificationItem component"
    ["task_2/dashboard/src/Notifications/Notifications.js"]="Modify Notifications component to use NotificationItem"
    ["task_2/dashboard/src/Notifications/Notifications.test.js"]="Modify tests for Notifications component"
    ["task_3/change_property.png"]="Screenshot of changed NotificationItem type"
    ["task_3/profiler.png"]="Screenshot of application profiling"
    ["task_4/dashboard/src/CourseList/CourseListRow.js"]="Create CourseListRow component with prop types"
    ["task_4/dashboard/src/CourseList/CourseListRow.test.js"]="Write tests for CourseListRow component"
    ["task_4/dashboard/src/CourseList/CourseList.js"]="Create CourseList component with prop types"
    ["task_4/dashboard/src/CourseList/CourseList.css"]="Add CSS for CourseList component"
    ["task_4/dashboard/src/CourseList/CourseList.test.js"]="Write tests for CourseList component"
    ["task_4/dashboard/src/App/App.js"]="Modify App component to conditionally render CourseList or Login"
    ["task_4/dashboard/src/App/App.test.js"]="Write tests for App component with conditional rendering"
    ["task_4/dashboard/src/Notifications/NotificationItem.js"]="Add prop types and default props to NotificationItem"
    ["task_4/dashboard/src/Notifications/Notifications.js"]="Add prop types and default props to Notifications component"
    ["task_4/dashboard/src/Notifications/Notifications.test.js"]="Write tests for updated Notifications component"
    ["task_5/dashboard/src/CourseList/CourseShape.js"]="Create CourseShape for courses"
    ["task_5/dashboard/src/CourseList/CourseList.js"]="Update CourseList to use CourseShape"
    ["task_5/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow to accept string or number for textSecondCell"
    ["task_5/dashboard/src/App/App.js"]="Update App component with listCourses array"
    ["task_5/dashboard/src/Notifications/NotificationItemShape.js"]="Create NotificationItemShape"
    ["task_5/dashboard/src/Notifications/Notifications.js"]="Update Notifications to use NotificationItemShape"
    ["task_5/dashboard/src/Notifications/NotificationItem.test.js"]="Write tests for updated NotificationItem component"
    ["task_5/dashboard/src/CourseList/CourseList.test.js"]="Write tests for updated CourseList component"
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

