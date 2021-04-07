import {
  RECEIVE_CURRENT_USER,
  LOGOUT_CURRENT_USER,
} from '../actions/session_actions';

import 
{RECEIVE_ALL_COURSES} from '../actions/course_actions'
const _nullUser = Object.freeze({
  currentUser: null
});

const sessionReducer = (state = _nullUser, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return { currentUser: action.currentUser.user };
    case LOGOUT_CURRENT_USER:
      return _nullUser;
    // case RECEIVE_ALL_COURSES:
    //   return { currentUser: action.currentUser.user };
    default:
      return state;
  }
};

export default sessionReducer;