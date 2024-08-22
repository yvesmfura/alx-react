#!/bin/bash

# Array of files and their respective commit messages for each task
declare -A files_and_messages=(
    # Task 0
    ["README.md"]="Update README with latest changes"
    ["task_0/dashboard/.babelrc"]="Update Babel configuration for task_0"
    ["task_0/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_0"
    ["task_0/dashboard/config/webpack.config.js"]="Update webpack configuration for task_0"
    ["task_0/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_0"
    ["task_0/dashboard/dist/index.html"]="Update index.html for task_0"
    ["task_0/dashboard/package-lock.json"]="Add package-lock.json for task_0"
    ["task_0/dashboard/package.json"]="Update package.json for task_0"
    ["task_0/dashboard/src/App/App.js"]="Update App.js for task_0"
    ["task_0/dashboard/src/App/App.test.js"]="Update App.test.js for task_0"
    ["task_0/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_0"
    ["task_0/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_0"
    ["task_0/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_0"
    ["task_0/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_0"
    ["task_0/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_0"
    ["task_0/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_0"
    ["task_0/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_0"
    ["task_0/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_0"
    ["task_0/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_0"
    ["task_0/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_0"
    ["task_0/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_0"
    ["task_0/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_0"
    ["task_0/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_0"
    ["task_0/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_0"
    ["task_0/dashboard/src/Header/Header.js"]="Update Header.js for task_0"
    ["task_0/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_0"
    ["task_0/dashboard/src/Login/Login.js"]="Update Login.js for task_0"
    ["task_0/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_0"
    ["task_0/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_0"
    ["task_0/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_0"
    ["task_0/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_0"
    ["task_0/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_0"
    ["task_0/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_0"
    ["task_0/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_0"
    ["task_0/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_0"
    ["task_0/dashboard/src/assets/close-icon.png"]="Add close icon for task_0"
    ["task_0/dashboard/src/assets/favicon.ico"]="Add favicon for task_0"
    ["task_0/dashboard/src/index.js"]="Update index.js for task_0"
    ["task_0/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_0"
    ["task_0/dashboard/src/schema/notifications.js"]="Update notifications schema for task_0"
    ["task_0/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_0"
    ["task_0/dashboard/src/utils/utils.js"]="Update utils.js for task_0"
    ["task_0/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_0"

    # Task 1
    ["task_1/dashboard/.babelrc"]="Update Babel configuration for task_1"
    ["task_1/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_1"
    ["task_1/dashboard/config/webpack.config.js"]="Update webpack configuration for task_1"
    ["task_1/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_1"
    ["task_1/dashboard/dist/index.html"]="Update index.html for task_1"
    ["task_1/dashboard/package-lock.json"]="Add package-lock.json for task_1"
    ["task_1/dashboard/package.json"]="Update package.json for task_1"
    ["task_1/dashboard/src/App/App.js"]="Update App.js for task_1"
    ["task_1/dashboard/src/App/App.test.js"]="Update App.test.js for task_1"
    ["task_1/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_1"
    ["task_1/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_1"
    ["task_1/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_1"
    ["task_1/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_1"
    ["task_1/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_1"
    ["task_1/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_1"
    ["task_1/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_1"
    ["task_1/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_1"
    ["task_1/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_1"
    ["task_1/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_1"
    ["task_1/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_1"
    ["task_1/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_1"
    ["task_1/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_1"
    ["task_1/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_1"
    ["task_1/dashboard/src/Header/Header.js"]="Update Header.js for task_1"
    ["task_1/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_1"
    ["task_1/dashboard/src/Login/Login.js"]="Update Login.js for task_1"
    ["task_1/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_1"
    ["task_1/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_1"
    ["task_1/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_1"
    ["task_1/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_1"
    ["task_1/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_1"
    ["task_1/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_1"
    ["task_1/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_1"
    ["task_1/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_1"
    ["task_1/dashboard/src/assets/close-icon.png"]="Add close icon for task_1"
    ["task_1/dashboard/src/assets/favicon.ico"]="Add favicon for task_1"
    ["task_1/dashboard/src/index.js"]="Update index.js for task_1"
    ["task_1/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_1"
    ["task_1/dashboard/src/schema/notifications.js"]="Update notifications schema for task_1"
    ["task_1/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_1"
    ["task_1/dashboard/src/utils/utils.js"]="Update utils.js for task_1"
    ["task_1/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_1"

    # Task 2
    ["task_2/dashboard/.babelrc"]="Update Babel configuration for task_2"
    ["task_2/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_2"
    ["task_2/dashboard/config/webpack.config.js"]="Update webpack configuration for task_2"
    ["task_2/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_2"
    ["task_2/dashboard/dist/index.html"]="Update index.html for task_2"
    ["task_2/dashboard/package-lock.json"]="Add package-lock.json for task_2"
    ["task_2/dashboard/package.json"]="Update package.json for task_2"
    ["task_2/dashboard/src/App/App.js"]="Update App.js for task_2"
    ["task_2/dashboard/src/App/App.test.js"]="Update App.test.js for task_2"
    ["task_2/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_2"
    ["task_2/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_2"
    ["task_2/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_2"
    ["task_2/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_2"
    ["task_2/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_2"
    ["task_2/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_2"
    ["task_2/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_2"
    ["task_2/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_2"
    ["task_2/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_2"
    ["task_2/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_2"
    ["task_2/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_2"
    ["task_2/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_2"
    ["task_2/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_2"
    ["task_2/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_2"
    ["task_2/dashboard/src/Header/Header.js"]="Update Header.js for task_2"
    ["task_2/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_2"
    ["task_2/dashboard/src/Login/Login.js"]="Update Login.js for task_2"
    ["task_2/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_2"
    ["task_2/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_2"
    ["task_2/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_2"
    ["task_2/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_2"
    ["task_2/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_2"
    ["task_2/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_2"
    ["task_2/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_2"
    ["task_2/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_2"
    ["task_2/dashboard/src/assets/close-icon.png"]="Add close icon for task_2"
    ["task_2/dashboard/src/assets/favicon.ico"]="Add favicon for task_2"
    ["task_2/dashboard/src/index.js"]="Update index.js for task_2"
    ["task_2/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_2"
    ["task_2/dashboard/src/schema/notifications.js"]="Update notifications schema for task_2"
    ["task_2/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_2"
    ["task_2/dashboard/src/utils/utils.js"]="Update utils.js for task_2"
    ["task_2/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_2"

    # Task 3
    ["task_3/dashboard/.babelrc"]="Update Babel configuration for task_3"
    ["task_3/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_3"
    ["task_3/dashboard/config/webpack.config.js"]="Update webpack configuration for task_3"
    ["task_3/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_3"
    ["task_3/dashboard/dist/index.html"]="Update index.html for task_3"
    ["task_3/dashboard/package-lock.json"]="Add package-lock.json for task_3"
    ["task_3/dashboard/package.json"]="Update package.json for task_3"
    ["task_3/dashboard/src/App/App.js"]="Update App.js for task_3"
    ["task_3/dashboard/src/App/App.test.js"]="Update App.test.js for task_3"
    ["task_3/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_3"
    ["task_3/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_3"
    ["task_3/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_3"
    ["task_3/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_3"
    ["task_3/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_3"
    ["task_3/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_3"
    ["task_3/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_3"
    ["task_3/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_3"
    ["task_3/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_3"
    ["task_3/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_3"
    ["task_3/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_3"
    ["task_3/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_3"
    ["task_3/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_3"
    ["task_3/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_3"
    ["task_3/dashboard/src/Header/Header.js"]="Update Header.js for task_3"
    ["task_3/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_3"
    ["task_3/dashboard/src/Login/Login.js"]="Update Login.js for task_3"
    ["task_3/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_3"
    ["task_3/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_3"
    ["task_3/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_3"
    ["task_3/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_3"
    ["task_3/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_3"
    ["task_3/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_3"
    ["task_3/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_3"
    ["task_3/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_3"
    ["task_3/dashboard/src/assets/close-icon.png"]="Add close icon for task_3"
    ["task_3/dashboard/src/assets/favicon.ico"]="Add favicon for task_3"
    ["task_3/dashboard/src/index.js"]="Update index.js for task_3"
    ["task_3/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_3"
    ["task_3/dashboard/src/schema/notifications.js"]="Update notifications schema for task_3"
    ["task_3/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_3"
    ["task_3/dashboard/src/utils/utils.js"]="Update utils.js for task_3"
    ["task_3/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_3"

    # Task 4
    ["task_4/dashboard/.babelrc"]="Update Babel configuration for task_4"
    ["task_4/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_4"
    ["task_4/dashboard/config/webpack.config.js"]="Update webpack configuration for task_4"
    ["task_4/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_4"
    ["task_4/dashboard/dist/index.html"]="Update index.html for task_4"
    ["task_4/dashboard/package-lock.json"]="Add package-lock.json for task_4"
    ["task_4/dashboard/package.json"]="Update package.json for task_4"
    ["task_4/dashboard/src/App/App.js"]="Update App.js for task_4"
    ["task_4/dashboard/src/App/App.test.js"]="Update App.test.js for task_4"
    ["task_4/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_4"
    ["task_4/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_4"
    ["task_4/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_4"
    ["task_4/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_4"
    ["task_4/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_4"
    ["task_4/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_4"
    ["task_4/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_4"
    ["task_4/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_4"
    ["task_4/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_4"
    ["task_4/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_4"
    ["task_4/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_4"
    ["task_4/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_4"
    ["task_4/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_4"
    ["task_4/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_4"
    ["task_4/dashboard/src/Header/Header.js"]="Update Header.js for task_4"
    ["task_4/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_4"
    ["task_4/dashboard/src/Login/Login.js"]="Update Login.js for task_4"
    ["task_4/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_4"
    ["task_4/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_4"
    ["task_4/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_4"
    ["task_4/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_4"
    ["task_4/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_4"
    ["task_4/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_4"
    ["task_4/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_4"
    ["task_4/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_4"
    ["task_4/dashboard/src/assets/close-icon.png"]="Add close icon for task_4"
    ["task_4/dashboard/src/assets/favicon.ico"]="Add favicon for task_4"
    ["task_4/dashboard/src/index.js"]="Update index.js for task_4"
    ["task_4/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_4"
    ["task_4/dashboard/src/schema/notifications.js"]="Update notifications schema for task_4"
    ["task_4/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_4"
    ["task_4/dashboard/src/utils/utils.js"]="Update utils.js for task_4"
    ["task_4/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_4"

    # Task 5
    ["task_5/dashboard/.babelrc"]="Update Babel configuration for task_5"
    ["task_5/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_5"
    ["task_5/dashboard/config/webpack.config.js"]="Update webpack configuration for task_5"
    ["task_5/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_5"
    ["task_5/dashboard/dist/index.html"]="Update index.html for task_5"
    ["task_5/dashboard/package-lock.json"]="Add package-lock.json for task_5"
    ["task_5/dashboard/package.json"]="Update package.json for task_5"
    ["task_5/dashboard/src/App/App.js"]="Update App.js for task_5"
    ["task_5/dashboard/src/App/App.test.js"]="Update App.test.js for task_5"
    ["task_5/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_5"
    ["task_5/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_5"
    ["task_5/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_5"
    ["task_5/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_5"
    ["task_5/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_5"
    ["task_5/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_5"
    ["task_5/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_5"
    ["task_5/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_5"
    ["task_5/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_5"
    ["task_5/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_5"
    ["task_5/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_5"
    ["task_5/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_5"
    ["task_5/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_5"
    ["task_5/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_5"
    ["task_5/dashboard/src/Header/Header.js"]="Update Header.js for task_5"
    ["task_5/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_5"
    ["task_5/dashboard/src/Login/Login.js"]="Update Login.js for task_5"
    ["task_5/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_5"
    ["task_5/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_5"
    ["task_5/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_5"
    ["task_5/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_5"
    ["task_5/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_5"
    ["task_5/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_5"
    ["task_5/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_5"
    ["task_5/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_5"
    ["task_5/dashboard/src/assets/close-icon.png"]="Add close icon for task_5"
    ["task_5/dashboard/src/assets/favicon.ico"]="Add favicon for task_5"
    ["task_5/dashboard/src/index.js"]="Update index.js for task_5"
    ["task_5/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_5"
    ["task_5/dashboard/src/schema/notifications.js"]="Update notifications schema for task_5"
    ["task_5/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_5"
    ["task_5/dashboard/src/utils/utils.js"]="Update utils.js for task_5"
    ["task_5/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_5"

    # Task 6
    ["task_6/dashboard/.babelrc"]="Update Babel configuration for task_6"
    ["task_6/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_6"
    ["task_6/dashboard/config/webpack.config.js"]="Update webpack configuration for task_6"
    ["task_6/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_6"
    ["task_6/dashboard/dist/index.html"]="Update index.html for task_6"
    ["task_6/dashboard/package-lock.json"]="Add package-lock.json for task_6"
    ["task_6/dashboard/package.json"]="Update package.json for task_6"
    ["task_6/dashboard/src/App/App.js"]="Update App.js for task_6"
    ["task_6/dashboard/src/App/App.test.js"]="Update App.test.js for task_6"
    ["task_6/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_6"
    ["task_6/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_6"
    ["task_6/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_6"
    ["task_6/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_6"
    ["task_6/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_6"
    ["task_6/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_6"
    ["task_6/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_6"
    ["task_6/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_6"
    ["task_6/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_6"
    ["task_6/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_6"
    ["task_6/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_6"
    ["task_6/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_6"
    ["task_6/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_6"
    ["task_6/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_6"
    ["task_6/dashboard/src/Header/Header.js"]="Update Header.js for task_6"
    ["task_6/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_6"
    ["task_6/dashboard/src/Login/Login.js"]="Update Login.js for task_6"
    ["task_6/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_6"
    ["task_6/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_6"
    ["task_6/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_6"
    ["task_6/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_6"
    ["task_6/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_6"
    ["task_6/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_6"
    ["task_6/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_6"
    ["task_6/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_6"
    ["task_6/dashboard/src/assets/close-icon.png"]="Add close icon for task_6"
    ["task_6/dashboard/src/assets/favicon.ico"]="Add favicon for task_6"
    ["task_6/dashboard/src/index.js"]="Update index.js for task_6"
    ["task_6/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_6"
    ["task_6/dashboard/src/schema/notifications.js"]="Update notifications schema for task_6"
    ["task_6/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_6"
    ["task_6/dashboard/src/utils/utils.js"]="Update utils.js for task_6"
    ["task_6/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_6"

    # Task 7
    ["task_7/dashboard/.babelrc"]="Update Babel configuration for task_7"
    ["task_7/dashboard/config/setupTests.js"]="Update setupTests.js configuration for task_7"
    ["task_7/dashboard/config/webpack.config.js"]="Update webpack configuration for task_7"
    ["task_7/dashboard/dist/bundle.js"]="Update bundled JavaScript for task_7"
    ["task_7/dashboard/dist/index.html"]="Update index.html for task_7"
    ["task_7/dashboard/package-lock.json"]="Add package-lock.json for task_7"
    ["task_7/dashboard/package.json"]="Update package.json for task_7"
    ["task_7/dashboard/src/App/App.js"]="Update App.js for task_7"
    ["task_7/dashboard/src/App/App.test.js"]="Update App.test.js for task_7"
    ["task_7/dashboard/src/App/AppContext.js"]="Update AppContext.js for task_7"
    ["task_7/dashboard/src/BodySection/BodySection.js"]="Update BodySection.js for task_7"
    ["task_7/dashboard/src/BodySection/BodySection.test.js"]="Update BodySection.test.js for task_7"
    ["task_7/dashboard/src/BodySection/BodySectionWithMarginBottom.js"]="Update BodySectionWithMarginBottom.js for task_7"
    ["task_7/dashboard/src/BodySection/BodySectionWithMarginBottom.test.js"]="Update BodySectionWithMarginBottom.test.js for task_7"
    ["task_7/dashboard/src/CourseList/CourseList.js"]="Update CourseList.js for task_7"
    ["task_7/dashboard/src/CourseList/CourseList.test.js"]="Update CourseList.test.js for task_7"
    ["task_7/dashboard/src/CourseList/CourseListRow.js"]="Update CourseListRow.js for task_7"
    ["task_7/dashboard/src/CourseList/CourseListRow.test.js"]="Update CourseListRow.test.js for task_7"
    ["task_7/dashboard/src/CourseList/CourseShape.js"]="Update CourseShape.js for task_7"
    ["task_7/dashboard/src/Footer/Footer.js"]="Update Footer.js for task_7"
    ["task_7/dashboard/src/Footer/Footer.test.js"]="Update Footer.test.js for task_7"
    ["task_7/dashboard/src/HOC/WithLogging.js"]="Update WithLogging.js for task_7"
    ["task_7/dashboard/src/HOC/WithLogging.test.js"]="Update WithLogging.test.js for task_7"
    ["task_7/dashboard/src/Header/Header.js"]="Update Header.js for task_7"
    ["task_7/dashboard/src/Header/Header.test.js"]="Update Header.test.js for task_7"
    ["task_7/dashboard/src/Login/Login.js"]="Update Login.js for task_7"
    ["task_7/dashboard/src/Login/Login.test.js"]="Update Login.test.js for task_7"
    ["task_7/dashboard/src/Login/__snapshots__/Login.test.js.snap"]="Add Login test snapshot for task_7"
    ["task_7/dashboard/src/Notifications/NotificationItem.js"]="Update NotificationItem.js for task_7"
    ["task_7/dashboard/src/Notifications/NotificationItem.test.js"]="Update NotificationItem.test.js for task_7"
    ["task_7/dashboard/src/Notifications/NotificationItemShape.js"]="Update NotificationItemShape.js for task_7"
    ["task_7/dashboard/src/Notifications/Notifications.js"]="Update Notifications.js for task_7"
    ["task_7/dashboard/src/Notifications/Notifications.test.js"]="Update Notifications.test.js for task_7"
    ["task_7/dashboard/src/assets/Holberton-logo.jpg"]="Add Holberton logo for task_7"
    ["task_7/dashboard/src/assets/close-icon.png"]="Add close icon for task_7"
    ["task_7/dashboard/src/assets/favicon.ico"]="Add favicon for task_7"
    ["task_7/dashboard/src/index.js"]="Update index.js for task_7"
    ["task_7/dashboard/src/reportWebVitals.js"]="Add reportWebVitals.js for task_7"
    ["task_7/dashboard/src/schema/notifications.js"]="Update notifications schema for task_7"
    ["task_7/dashboard/src/schema/notifications.test.js"]="Update notifications schema test for task_7"
    ["task_7/dashboard/src/utils/utils.js"]="Update utils.js for task_7"
    ["task_7/dashboard/src/utils/utils.test.js"]="Update utils.test.js for task_7"
)

# Loop through each task directory and copy files with the specific names
for task in "${!tasks[@]}"; do
    cp -v ${tasks[$task]} $task
done
# Loop through each file in the associative array
for file in "${!tasks[@]}"; do
    # Add the file to the staging area
    git add "$file"

    # Commit the file with its respective message
    git commit -m "${tasks[$file]}"
done

# Push all commits to the remote repository
git push
