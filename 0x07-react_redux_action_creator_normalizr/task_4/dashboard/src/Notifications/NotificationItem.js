import React, { Component } from 'react';
import PropTypes from "prop-types";
import { StyleSheet, css } from "aphrodite";


const styles = StyleSheet.create({
    defaultNotification: {
        color: '#1D0563',
        "@media (max-width: 900px)": {
            padding: "10px 8px",
            borderBottom: "1px solid #0A0A0A"
        },
    },
    urgentNotification: {
        color: '#F02201',
        "@media (max-width: 900px)": {
            padding: "10px 8px",
            borderBottom: "1px solid #0A0A0A"
        },
    },
});

const NotificationItem = React.memo(function NotificationItem({ type, html, value, id, markAsRead }) {
    const handleItemClick = () => markAsRead(id);

    return (
        <li data-notification-type={type} className={type === "default" ? css(styles.defaultNotification) : css(styles.urgentNotification)} onClick={handleItemClick} dangerouslySetInnerHTML={html}>
            {value}
        </li>
    );
});

NotificationItem.propTypes = {
    type: PropTypes.string.isRequired,
    value: PropTypes.string,
    __html: PropTypes.shape({html: PropTypes.string}),
    markAsRead: PropTypes.func,
    id: PropTypes.number,
};

NotificationItem.defaultProps = {
    type: "default",
};

export default NotificationItem;
