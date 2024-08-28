import React from 'react';
import close_icon from '../assets/close-icon.png';
import NotificationItem from './NotificationItem';
import PropTypes from 'prop-types';


import {css, StyleSheet} from 'aphrodite';

const opacityAnimation = {
    from: {
        opacity: 0.5,
    },

    to: {
        opacity: 1,
    },
};

const translateAnimation = {
    '0%': {transform: 'translateY(0)'},
    '50%': {transform: 'translateY(-5px)'},
    '75%': {transform: 'translateY(5px)'},
    '100%': {transform: 'translateY(0)'},
};

const styles = StyleSheet.create({
    Notification: {
        padding: "1em",
        border: "2px dashed #000000",
        position: "absolute",
        top: "2.3em",
        right: "0",
        background: "#FFFFFF",
        zIndex: "9999",
        "@media (max-width: 900px)": {
            position: "absolute",
            display: "block",
            top: "0",
            height: "100vh",
            zIndex:"9999",
            background: "white",
            width: "100%",
            border: "none",
            fontSize: "20px",
            padding: "0",
        },
        ':hover': {
            borderColor: "#9F8289",
            transition:  "2s"
        },
    },

    "notification-header": {
        display: "flex",
        justifyContent: "space-between",
    },

    MenuItem: {
        textAlign: 'right',
        paddingRight: '2rem',
        backgroundColor: '#fff8f8',
        cursor: 'pointer',
        "@media (max-width: 900px)": {
            display: "none",
        },
        ':hover': {
            animationName: [opacityAnimation, translateAnimation],
            animationDuration: '1s, 0.5s',
            animationIterationCount: 3,
        },
    },
    MenuItemHidden: {
        cursor:'auto',
        background: "#FFFFFF"
    },

    ulStyling: {
        "@media (max-width: 900px)": {
            padding: "0",
        },
    },
    closeButton: {
        background: 'none',
        border: 'none',
        position: 'relative',
        right: '-92%',
        top: '-10%',
        cursor: 'pointer',
        "@media (max-width: 900px)": {
            top: "0",
            background: "gray"
        },
    },
});



function Notifications(props) {
    const {
        displayDrawer,
        listNotifications,
        handleDisplayDrawer,
        handleHideDrawer,
        setNotificationFilter,
        markNotificationAsRead } = props;

    return (
        <React.Fragment>
            <div className={css(styles.MenuItem)} onClick={handleDisplayDrawer}>

                {displayDrawer ? <p className={css(styles.MenuItemHidden)}>&nbsp;</p> :  <p>Your notifications</p>
                }
            </div>
            {displayDrawer && (
                <div className={css(styles.Notification)}>
                    <button
                        type="button"
                        aria-label="Close"
                        className={css(styles.closeButton)}
                        onClick={handleHideDrawer}
                    >
                        <img src={close_icon} alt="Close icon" style={{ width: '24px', height: '24px' }} />
                    </button>
                    <p>Here is the list of notifications</p>
                    <button onClick={() => {setNotificationFilter('URGENT');}} className='urgent' title={'Urgent'}>
                        ‼️
                    </button>
                    <button onClick={() => {setNotificationFilter('DEFAULT');}} className='default' title={'Default'}>
                        💠
                    </button>
                    <ul className={css(styles.ulStyling)}>
                        {listNotifications && listNotifications.length > 0 ? (
                            listNotifications.map((notification, index) => (
                                <NotificationItem
                                    key={index}
                                    type={notification.type}
                                    value={notification.value}
                                    html={notification.html}
                                    id={notification.id}
                                    markAsRead={() => markNotificationAsRead(notification.guid)}
                                />
                            ))
                        ) : (
                            <li>No new notification for now</li>
                        )}
                    </ul>
                </div>
            )}
        </React.Fragment>
    );
}

Notifications.propTypes = {
    displayDrawer: PropTypes.bool,
    listNotifications: PropTypes.array,
    handleDisplayDrawer: PropTypes.func,
    handleHideDrawer: PropTypes.func,
    markNotificationAsRead: PropTypes.func,
    fetchNotifications: PropTypes.func,
    setNotificationFilter: PropTypes.func,
};

Notifications.defaultProps = {
    displayDrawer: false,
    listNotifications: [],
    handleDisplayDrawer: () => {},
    handleHideDrawer: () => {},
    markNotificationAsRead: () => {},
    fetchNotifications: () => {},
    setNotificationFilter: () => {},
};

export default Notifications;
