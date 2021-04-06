import * as UserAPI from '../util/user_api_util';

export const RECEIVE_USERS = "RECEIVE_USERS";
export const RECEIVE_USER = "RECEIVE_USER";
export const RECEIVE_USER_ERRORS = 'RECEIVE_USER_ERRORS';

const receiveUsers = users => ({
    type: RECEIVE_USERS,
    users
})

const receiveUser = (payload) => ({
    type: RECEIVE_USER,
    payload 
})

export const receiveErrors = errors => ({
  type: RECEIVE_USER_ERRORS,
  errors
});

export const fetchUsers = () => dispatch => (
  UserAPI.fetchUsers().then(users => dispatch(receiveUsers(users))),
  err => dispatch(receiveErrors(err.responseJSON))
);

export const fetchUser = (userId) => (dispatch) => (
    UserAPI.fetchUser(userId)
    .then(payload => {
        dispatch(receiveUser(payload))
    })
    .fail(err => {
        dispatch(receiveErrors(err.responseJSON))
    })
)

    
export const updateUserInfo = (user) => (dispatch) => (
    UserAPI.updateUser(user)
    .then(payload => {
        dispatch(receiveUser(payload))
    })
    .fail(err => {
        dispatch(receiveErrors(err.responseJSON))
    })
)
