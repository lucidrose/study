import React, { Component} from 'react';
import SassComponent from './SassComponent';
import CSSModule from './CSSModule';
import StyledComponent from './StyledComponents'

class App extends Component {
  render() {
    return (
      <div>
        <div>
          <SassComponent />
        </div>
        <div>
          <CSSModule />
        </div>
        <div>
          <StyledComponent />
        </div>
      </div>
    )
  }
}
export default App;