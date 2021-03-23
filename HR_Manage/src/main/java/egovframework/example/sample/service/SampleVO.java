/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.service;

/**
 * @Class Name : SampleVO.java
 * @Description : SampleVO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class SampleVO extends SampleDefaultVO {

	private static final long serialVersionUID = 1L;
	
	private String viewId;

	private Integer memberNo; // 사원번호
	
	private String memberKnm; // 한글 이름
	
	private String memberEnm; // 영어 이름
	 
	private String memberJnm; // 한문 이름
	
	private String rrn1; // 주민등록번호 앞
	
	private String rrn2; // 주민등록번호 뒤
	
	private String fileNm; // 파일 이름
	
	private String filePath; // 파일주소
	
	private String bYear; // 생년월일 - 년도
	
	private String bMonth; // 생년월일 - 월
	
	private String bDay; // 생년월일 -일 
	
	private String calendar; // 양력(1), 음력(2)
	
	private String gender; // 남(1), 여(2)
	
	private String wedding; // 기혼(1), 미혼(2)
	
	private String career; // 경력
	
	private String moneyType; // 급여 지급유형
	
	private String workingType; // 희망 직무
	
	private String joinType; // 입사유형
	
	private String postCd; // 우편번호
	
	private String address; // 주소
	
	private String phoneNo1; // 폰번호 앞자리
	
	private String phoneNo2; // 폰번호 가운데
	
	private String phoneNo3; // 폰번호 뒷자리
	
	private String email; // 이메일
	
	private String stat; // 기술등급
	
	private String alchol; // 주량	
	
	private String listStat; // 상태
	
	private String workYdn; // 근무상태

	public Integer getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(Integer memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberKnm() {
		return memberKnm;
	}

	public void setMemberKnm(String memberKnm) {
		this.memberKnm = memberKnm;
	}

	public String getMemberEnm() {
		return memberEnm;
	}

	public void setMemberEnm(String memberEnm) {
		this.memberEnm = memberEnm;
	}

	public String getMemberJnm() {
		return memberJnm;
	}

	public void setMemberJnm(String memberJnm) {
		this.memberJnm = memberJnm;
	}

	public String getRrn1() {
		return rrn1;
	}

	public void setRrn1(String rrn1) {
		this.rrn1 = rrn1;
	}

	public String getRrn2() {
		return rrn2;
	}

	public void setRrn2(String rrn2) {
		this.rrn2 = rrn2;
	}

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getbYear() {
		return bYear;
	}

	public void setbYear(String bYear) {
		this.bYear = bYear;
	}

	public String getbMonth() {
		return bMonth;
	}

	public void setbMonth(String bMonth) {
		this.bMonth = bMonth;
	}

	public String getbDay() {
		return bDay;
	}

	public void setbDay(String bDay) {
		this.bDay = bDay;
	}

	public String getCalendar() {
		return calendar;
	}

	public void setCalendar(String calendar) {
		this.calendar = calendar;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getWedding() {
		return wedding;
	}

	public void setWedding(String wedding) {
		this.wedding = wedding;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getMoneyType() {
		return moneyType;
	}

	public void setMoneyType(String moneyType) {
		this.moneyType = moneyType;
	}

	public String getWorkingType() {
		return workingType;
	}

	public void setWorkingType(String workingType) {
		this.workingType = workingType;
	}

	public String getJoinType() {
		return joinType;
	}

	public void setJoinType(String joinType) {
		this.joinType = joinType;
	}

	public String getPostCd() {
		return postCd;
	}

	public void setPostCd(String postCd) {
		this.postCd = postCd;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNo1() {
		return phoneNo1;
	}

	public void setPhoneNo1(String phoneNo1) {
		this.phoneNo1 = phoneNo1;
	}

	public String getPhoneNo2() {
		return phoneNo2;
	}

	public void setPhoneNo2(String phoneNo2) {
		this.phoneNo2 = phoneNo2;
	}

	public String getPhoneNo3() {
		return phoneNo3;
	}

	public void setPhoneNo3(String phoneNo3) {
		this.phoneNo3 = phoneNo3;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStat() {
		return stat;
	}

	public void setStat(String stat) {
		this.stat = stat;
	}

	public String getAlchol() {
		return alchol;
	}

	public void setAlchol(String alchol) {
		this.alchol = alchol;
	}

	public String getListStat() {
		return listStat;
	}

	public void setListStat(String listStat) {
		this.listStat = listStat;
	}

	public String getWorkYdn() {
		return workYdn;
	}

	public void setWorkYn(String workYdn) {
		this.workYdn = workYdn;
	}

	
	public String getViewId() {
		return viewId;
	}

	public void setViewId(String viewId) {
		this.viewId = viewId;
	}

	public void setWorkYdn(String workYdn) {
		this.workYdn = workYdn;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}	
	
}
