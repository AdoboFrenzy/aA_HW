import React from 'react';
import {
  Route,
  Link,
  NavLink
} from 'react-router-dom';

import Red from './red';
import Orange from './orange';
import Yellow from './yellow';
import Green from './green';
import Blue from './blue';
import Indigo from './indigo';
import Violet from './violet';


class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
          <NavLink exact to='/red' >Red only</NavLink>

          <NavLink exact to='/blue' >Blue only</NavLink>

          <NavLink to='/green' >Green only</NavLink>
          <NavLink to='/violet' >Violet only</NavLink>
        {/* Your links should go here */}

        <div id="rainbow">
          {<Route path="/red" component={Red} />}

          {<Route path="/green" component={Green} />}
          {<Route path="/blue" component={Blue} />}
          
          {<Route path="/violet" component={Violet} />}
        </div>
      </div>
    );
  }
};

export default Rainbow;
