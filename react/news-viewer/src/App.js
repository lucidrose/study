//import React, {useState} from 'react';
//import axios from 'axios';
//import NewsList from './components/NewsList'
//mport React, {useState, useCallback} from 'react';
//import NewsList from './components/NewsList';
//import Categories from './components/Categories'
import React from 'react';
import { Route } from 'react-router-dom';
import NewsPage from './pages/NewsPage';

const App = () => {
  return (
    <Route path="/:category?" component={NewsPage} />
  )
  // const [category, setCategory] = useState('all');
  // const onSelect = useCallback(category => setCategory(category),[]);

  // return (
  //   <>
  //     <Categories category={category} onSelect={onSelect} />
  //     <NewsList category={category} />
  //   </>
  //   )
  // const [data, setData] = useState(null);
  // const onClick = async () => {
  //   try {
  //     const response = await axios.get(
  //       'http://newsapi.org/v2/top-headlines?country=kr&apiKey=8876ed4e9ce24f20a3267037be2660cb'
  //     );
  //     setData(response.data);
  //   }
  //   catch (e) {
  //     console.log(e);
  //   }
  // }
  
  // // const [data,setData] = useState(null);
  // // const onClick = () => {
  // //   axios.get('https://jsonplaceholder.typicode.com/todos/1').then(response => {
  // //     setData(response.data);
  // //   })
  // // }

  // return (
  //   <div>
  //     <div>
  //       <button onClick={onClick}>불러오기</button>
  //     </div>
  //     <div>
  //       {data && <textarea
  //                   rows={7}
  //                   value={JSON.stringify(data,null,2)} readOnly={true} />}
  //     </div>
  //   </div>
  // )
}

export default App;