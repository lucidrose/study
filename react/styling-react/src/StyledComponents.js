import React from 'react';
import styled, {css } from 'styled-components';

const Box = styled.div`
    /* props로 넣어 준 값을 직접 전달해 줄 수 있습니다. */
    background: ${props => props.color || 'red'};
    padding: 1rem;
    display:flex;
    width:1024px;
    margin:0 auto;
    @media (max-width:1024px) {
        whdith: 768px;
    }
    @media (max-width: 768px) {
        width: 100%
    }
    `;

const Button = styled.button`
    background:orange;
    color:black;
    border-radius:4px;
    padding:0.5rem;
    display:flex;
    align-items:center;
    justify-content:center;
    box-sizing:border-box;
    font-size:1rem;
    font-weight:600;

    /*&문자를 사용하여 Sass처럼 자기 자신 선택 가능 */
    &:hover {
        background:rgba(255,255,255,0.9);
    }
    
    ${props => 
    props.inverted &&
    css`
        background: none;
        border:2px solid white;
        color: white;
        &:hover {
            background:white;
            color:black;
        }
    `};
    & + button {
        margin-left:1rem;
    }
`;

const StyledComponent = () => (
       <Box>
           <Button>안녕하세요</Button>
           <Button inverted={true}>테두리만</Button>
       </Box>
   )
export default StyledComponent;