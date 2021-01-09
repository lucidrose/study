import React from 'react';

const data = {
    velopert: {
        name:'김민준',
        description : '리액트를 좋아하는 개발자'
    },
    gildong: {
        name:'홍길동',
        desctiption:'고전 소설 홍길동전의 주인공'
    }
}

const Profile = ({match}) => {
    console.log(match)
    const {username} = match.params;
    const profile = data[username];
    if(!profile) {
        return <div> 존재하지 않는 사용자입니다.</div>;
    }
    return (
        <div>
            <h3>
                {username}({profile.name})
            </h3>
            <p>{profile.desctiption}</p>
        </div>
    )
}

export default Profile;