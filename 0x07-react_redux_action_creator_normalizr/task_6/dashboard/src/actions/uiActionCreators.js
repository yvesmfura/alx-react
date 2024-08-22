import { LOGIN, LOGOUT, DISPLAY_NOTIFICATION_DRAWER, HIDE_NOTIFICATION_DRAWER } from "./uiActionTypes";

export function login(email, password) {
    return {
        type: LOGIN,
        user: { email, password },
    };
}

export function logout() {
    return {
        type: LOGOUT,
    };
}

export function displayNotificationDrawer() {
    return {
        type: DISPLAY_NOTIFICATION_DRAWER,
    };
}

export function hideNotificationDrawer() {
    return {
        type: HIDE_NOTIFICATION_DRAWER,
    };
}

export function boundLogin(email, password) {
    return function(dispatch) {
        dispatch(login(email, password));
    };
}

export function boundLogout() {
    return function(dispatch) {
        dispatch(logout());
    };
}

export function boundDisplayNotificationDrawer() {
    return function(dispatch) {
        dispatch(displayNotificationDrawer());
    };
}

export function boundHideNotificationDrawer() {
    return function(dispatch) {
        dispatch(hideNotificationDrawer());
    };
}
