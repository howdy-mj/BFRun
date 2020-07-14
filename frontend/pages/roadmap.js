// external modules
import React, { useState } from 'react';
import styled from 'styled-components';

// internal moduels
import Nav from '../components/Nav';
import GeneralCourse from '../components/RoadmapLink/GeneralCourse';
import FrontCourse from '../components/RoadmapLink/FrontCourse';
import BackCourse from '../components/RoadmapLink/BackCourse';

const Roadmap = () => {
  const [select, setSelect] = useState(1);

  const selectedNum = (id) => {
    setSelect(id);
  };

  const toShow = {
    1: <GeneralCourse />,
    2: <FrontCourse />,
    3: <BackCourse />,
  };

  return (
    <RoadmapWrap>
      <Nav />
      <RoadmapContainer>
        <RoadmapH1>로드맵</RoadmapH1>
        <RoadmapBody>
          <ChoiceContainer>
            <RoadChoice select={select === 1} onClick={() => selectedNum(1)}>
              공통
            </RoadChoice>
            <RoadChoice select={select === 2} onClick={() => selectedNum(2)}>
              프론트엔드
            </RoadChoice>
            <RoadChoice
              select={select === 3}
              onClick={() => {
                selectedNum(3);
              }}
            >
              백엔드
            </RoadChoice>
          </ChoiceContainer>
          <CourseContainer>{toShow[select]}</CourseContainer>
        </RoadmapBody>
      </RoadmapContainer>
    </RoadmapWrap>
  );
};

export default Roadmap;

const RoadmapWrap = styled.div``;

const RoadmapContainer = styled.div`
  border: 2px solid red;
  /* box-shadow: 2px 2px rgba(149, 175, 192, 0.4); */
  margin: 0 auto;
  position: relative;
  top: 120px;
  margin-bottom: 100px;
  padding: 10px;
  width: 900px;
  @media ${(props) => props.theme.laptopM} {
    width: 90%;
  }
`;

const RoadmapH1 = styled.h1`
  /* border: 1px solid blue; */
  margin: 2px;
  display: flex;
  justify-content: center;
  font-size: 30px;
`;

const RoadmapBody = styled.div`
  /* border: 1px solid blue; */
  margin: 2px;
  padding: 10px 0;
`;
const ChoiceContainer = styled.div`
  /* border: 1px solid green; */
  margin: 2px auto;
  padding: 5px 90px;
  display: flex;
  justify-content: space-evenly;
`;

const RoadChoice = styled.div`
  border: ${(props) =>
    props.select
      ? '2px solid rgba(30, 39, 46, 1)'
      : '2px solid rgba(30, 39, 46, 0)'};
  border-radius: 4px;
  background-color: rgba(255, 211, 42, 1);
  color: rgba(30, 39, 46, 1);
  transition: all 0.3s ease-in;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  margin: 2px;
  width: 100px;
  height: 30px;
  &:hover {
    border: 2px solid rgba(30, 39, 46, 1);
  }
`;

const CourseContainer = styled.ul`
  /* border: 1px solid green; */
  padding: 5px;
  margin: 50px auto;
  max-width: 500px;
`;
