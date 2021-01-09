import React, {useRef, useCallback, useState } from 'react';
import produce from 'immer'

const App = () => {
  const nextId = useRef(10);
  const [form, setForm] = useState({name:'',username:''});
  const [data, setData] = useState({
    array: [],
    uselessValue: null
  })

  // input 수정을 위한 함수
  const onChange = useCallback (
    e => {
      const {name, value} = e.target;
      setForm(
        produce(draft => {
          draft[name] = value;
        })
      )
    },
    [form]
    // e => {
    //   const {name, value} = e.target;
    //   setForm({
    //     ...form,
    //     [name]:[value]
    //   })
    // },
    // [form]
  )

  // form 등록을 위한 함수
  const onSubmit = useCallback(
    e => {
      e.preventDefault();
      const info = {
        id: nextId.current,
        name:form.name,
        username:form.username
      }

      // arrya에 새 항목 등록
      setData(
        produce(draft => {
          draft.array.push(info);
        })
      )
      // setData({
      //   ...data,
      //   array: data.array.concat(info)
      // })

      // form 초기화
      setForm({
        name: '',
        username:''
      })
      nextId.current += 1;

    },
    [data,form.name, form.username]
  )

  // 항목을 삭제하는 함수
  const onRemove = useCallback (
    id => {
      setData(
        produce(draft => {
          draft.array.splice(draft.array.findIndex(info => info.id === id),1)
        })
      )
    },
    [data]
    // id => {
    //   setData({
    //     ...data,
    //     array:data.array.filter(info => info.id !== id)
    //   })
    // },
    // [data]
  )

  return (
    <div>
      <form onSubmit={onSubmit}>
        <input
          name="username"
          placeholder="아이디"
          value={form.username}
          onChange={onChange}
        />
        <input
          name="name"
          placeholder="이름"
          value={form.name}
          onChange={onChange}
        />
        <button type="submit">등록</button>          
      </form>
      <div>
        <ul>
          {data.array.map(info => (
            <li key={info.id} onClick={() => onRemove(info.id)}>
              {info.username} ({info.name})
            </li>
          ))}
        </ul>
      </div>
    </div>
  )
}

export default App;