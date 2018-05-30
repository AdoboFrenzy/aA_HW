import { RECEIVE_SEARCH_GIPHYS } from '../actions/giphy_actions';

const giphysReducer = (state = [], action) => {
  switch (action.type) {
    // let newState = {};

    case RECEIVE_SEARCH_GIPHYS:
    // let newState = action.giphys;
    // return newState;
    return action.giphys;

    default:
    return state;
  };
};

export default giphysReducer;
