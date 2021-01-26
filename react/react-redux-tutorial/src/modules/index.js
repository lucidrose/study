import { combineReducers } from 'redux';
import counter from './counter';
import todos from './todos';

// 리듀서 하나로 합치기 why? createStore 함수를 사용하여 스토어를 만들 때는 리듀서를 하나만 사용해야 함
const rootReducer = combineReducers({
  counter, 
  todos
})

export default rootReducer;