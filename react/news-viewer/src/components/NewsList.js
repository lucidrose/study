import React, {useState, useEffect} from 'react';
import styled from 'styled-components';
import NewsItem from './NewsItem';
import axios from 'axios';
import usePromise from '../lib/usePromise';


const NewsListBlock=styled.div`
    box-sizing:border-box;
    padding-bottom:3rem;
    width:768px;
    margin:0 auto;
    margin-top:2rem;
    @media screen and (max-width:768px) {
        width:100%;
        padding-left:1rem;
        padding-right:1rem;
    }
`;

const sampleArticle = {
    title : '제목',
    description:'내용',
    url:'https://google.com',
    urlToImage:'https://via.palceholder.com/160'
};

const NewsList = ({category}) => {
    const[loading, response, error] = usePromise(() => {
        const query = category === 'all' ? '' : `&category=${category}`;
         return axios.get (
                    `http://newsapi.org/v2/top-headlines?country=kr${query}&apiKey=8876ed4e9ce24f20a3267037be2660cb`
                )
    },[category])
    
    //대기 중일 때
    if(loading) {
        return <newsListBlock>대기중...</newsListBlock>
    }

    // 아직 articles 값이 설정되지 않았을 떄
    if(!response) {
        return null;
    }

    if(error) {
        return <NewsListBlock>에러발생!</NewsListBlock>
    }
    const {articles} = response.data;
    //articles 값이 유효할 때
    return (
        <NewsListBlock>
            {articles.map(article => (
                <NewsItem key={articles.url} article={article} />
            ))}
        </NewsListBlock>
    )
}

export default NewsList;