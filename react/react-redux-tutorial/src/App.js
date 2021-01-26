import React from 'react';
import CounterContainer from './containers/CounterContainer';
import TodosContiner from './containers/TodosContainers';

const App = () => {
  return (
    <div>
      <CounterContainer />
      <hr />
      <TodosContiner />
    </div>
  )
}
export default App;