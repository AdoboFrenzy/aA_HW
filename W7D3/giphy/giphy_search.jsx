import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import { fetchSearchGiphys } from './util/api_util.js';
import { receiveSearchGiphys } from './actions/giphy_actions.js';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');

  window.receiveSearchGiphys = receiveSearchGiphys;
  window.fetchSearchGiphys = fetchSearchGiphys;
  const store = configureStore();
  window.store = store;


  // ReactDOM.render(<Root store={ store }/>, root);
})
