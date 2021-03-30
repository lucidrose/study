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
	
	private String viewNm;

	/*TB_MEMBER*/
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
	
	/*TB_GRAD*/
	private Integer gradNo;
	
	private String high; // 고등학교
	
	private String hMajor; // 전공
	
	private String hYear;
	
	private String hMonth;
	
	private String computer;
	
	private String cMajor;
	
	private String cYear;
	
	private String cMonth;
	
	private String college;
	
	private String coMajor;
	
	private String coYear;
	
	private String coMonth;
	
	private String university;
	
	private String uMajor;
	
	private String uYear;
	
	private String uMonth;
	
	/*TB_EDU*/
	private Integer eduNo;
	
	private String eduNm;
	
	private String eduStartDate;
	
	private String eduEndDate;
	
	private String eduAgency;
	
	/*TB_LECENSE*/
	private Integer licenseNo;
	
	private String licenseNm;
	
	private String lDate;
	
	/*TB_TECH*/
	private Integer techNo;
	
	private String techNm;
	
	private String tLevel;
	
	/*TB_PROJECT*/
	private Integer projectNo;
	
	private String projectNm;
	
	private String pStartDate;
	
	private String pEndDate;
	
	private String client;
	
	private String workCompany;
	
	private String field;
	
	private String part;
	
	private String modelNm;
	
	private String os;
	
	private String language;
	
	private String dbms;
	
	private String tool;
	
	private String socket;
	
	private String remark;
	
	/*TB_CAREER*/
	private Integer careerNo;
	
	private String companyNm;
	
	private String position;
	
	private String startDate;
	
	private String endDate;
	
	private String task;
	
	/*TB_WORK*/
	private Integer workNo;
	
	private String workProjectNm;
	
	private String place;
	
	private String workStartDate;
	
	private String workEndDate;
	
	private String salesPrice;
	
	private String signPreDate;
	
	private String signDate;
	
	private String customer;
	
	// 테이블 개수
	private Integer eduCnt; 

	
	public String getViewNm() {
		return viewNm;
	}

	public void setViewNm(String viewNm) {
		this.viewNm = viewNm;
	}

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

	public String getHigh() {
		return high;
	}

	public void setHigh(String high) {
		this.high = high;
	}

	public String gethMajor() {
		return hMajor;
	}

	public void sethMajor(String hMajor) {
		this.hMajor = hMajor;
	}

	public String gethYear() {
		return hYear;
	}

	public void sethYear(String hYear) {
		this.hYear = hYear;
	}

	public String gethMonth() {
		return hMonth;
	}

	public void sethMonth(String hMonth) {
		this.hMonth = hMonth;
	}

	public String getComputer() {
		return computer;
	}

	public void setComputer(String computer) {
		this.computer = computer;
	}

	public String getcMajor() {
		return cMajor;
	}

	public void setcMajor(String cMajor) {
		this.cMajor = cMajor;
	}

	public String getcYear() {
		return cYear;
	}

	public void setcYear(String cYear) {
		this.cYear = cYear;
	}

	public String getcMonth() {
		return cMonth;
	}

	public void setcMonth(String cMonth) {
		this.cMonth = cMonth;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}
	
	public String getCoMajor() {
		return coMajor;
	}

	public void setCoMajor(String coMajor) {
		this.coMajor = coMajor;
	}

	public String getCoYear() {
		return coYear;
	}

	public void setCoYear(String coYear) {
		this.coYear = coYear;
	}

	public String getCoMonth() {
		return coMonth;
	}

	public void setCoMonth(String coMonth) {
		this.coMonth = coMonth;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getuMajor() {
		return uMajor;
	}

	public void setuMajor(String uMajor) {
		this.uMajor = uMajor;
	}

	public String getuYear() {
		return uYear;
	}

	public void setuYear(String uYear) {
		this.uYear = uYear;
	}

	public String getuMonth() {
		return uMonth;
	}

	public void setuMonth(String uMonth) {
		this.uMonth = uMonth;
	}

	public String getEduNm() {
		return eduNm;
	}

	public void setEduNm(String eduNm) {
		this.eduNm = eduNm;
	}

	public String getEduStartDate() {
		return eduStartDate;
	}

	public void setEduStartDate(String eduStartDate) {
		this.eduStartDate = eduStartDate;
	}

	public String getEduEndDate() {
		return eduEndDate;
	}

	public void setEduEndDate(String eduEndDate) {
		this.eduEndDate = eduEndDate;
	}

	public String getEduAgency() {
		return eduAgency;
	}

	public void setEduAgency(String eduAgency) {
		this.eduAgency = eduAgency;
	}

	public String getLicenseNm() {
		return licenseNm;
	}

	public void setLicenseNm(String licenseNm) {
		this.licenseNm = licenseNm;
	}

	public String getlDate() {
		return lDate;
	}

	public void setlDate(String lDate) {
		this.lDate = lDate;
	}

	public String getTechNm() {
		return techNm;
	}

	public void setTechNm(String techNm) {
		this.techNm = techNm;
	}

	public String gettLevel() {
		return tLevel;
	}

	public void settLevel(String tLevel) {
		this.tLevel = tLevel;
	}

	public String getProjectNm() {
		return projectNm;
	}

	public void setProjectNm(String projectNm) {
		this.projectNm = projectNm;
	}

	public String getpStartDate() {
		return pStartDate;
	}

	public void setpStartDate(String pStartDate) {
		this.pStartDate = pStartDate;
	}

	public String getpEndDate() {
		return pEndDate;
	}

	public void setpEndDate(String pEndDate) {
		this.pEndDate = pEndDate;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

	public String getWorkCompany() {
		return workCompany;
	}

	public void setWorkCompany(String workCompany) {
		this.workCompany = workCompany;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public String getModelNm() {
		return modelNm;
	}

	public void setModelNm(String modelNm) {
		this.modelNm = modelNm;
	}

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getDbms() {
		return dbms;
	}

	public void setDbms(String dbms) {
		this.dbms = dbms;
	}

	public String getTool() {
		return tool;
	}

	public void setTool(String tool) {
		this.tool = tool;
	}

	public String getSocket() {
		return socket;
	}

	public void setSocket(String socket) {
		this.socket = socket;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getCompanyNm() {
		return companyNm;
	}

	public void setCompanyNm(String companyNm) {
		this.companyNm = companyNm;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public String getWorkProjectNm() {
		return workProjectNm;
	}

	public void setWorkProjectNm(String workProjectNm) {
		this.workProjectNm = workProjectNm;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getWorkStartDate() {
		return workStartDate;
	}

	public void setWorkStartDate(String workStartDate) {
		this.workStartDate = workStartDate;
	}

	public String getWorkEndDate() {
		return workEndDate;
	}

	public void setWorkEndDate(String workEndDate) {
		this.workEndDate = workEndDate;
	}

	public String getSalesPrice() {
		return salesPrice;
	}

	public void setSalesPrice(String salesPrice) {
		this.salesPrice = salesPrice;
	}

	public String getSignPreDate() {
		return signPreDate;
	}

	public void setSignPreDate(String signPreDate) {
		this.signPreDate = signPreDate;
	}

	public String getSignDate() {
		return signDate;
	}

	public void setSignDate(String signDate) {
		this.signDate = signDate;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}
	
	

	public Integer getGradNo() {
		return gradNo;
	}

	public void setGradNo(Integer gradNo) {
		this.gradNo = gradNo;
	}

	public Integer getEduNo() {
		return eduNo;
	}

	public void setEduNo(Integer eduNo) {
		this.eduNo = eduNo;
	}

	public Integer getLicenseNo() {
		return licenseNo;
	}

	public void setLicenseNo(Integer licenseNo) {
		this.licenseNo = licenseNo;
	}

	public Integer getTechNo() {
		return techNo;
	}

	public void setTechNo(Integer techNo) {
		this.techNo = techNo;
	}

	public Integer getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(Integer projectNo) {
		this.projectNo = projectNo;
	}


	public Integer getWorkNo() {
		return workNo;
	}

	public void setWorkNo(Integer workNo) {
		this.workNo = workNo;
	}

	public Integer getCareerNo() {
		return careerNo;
	}

	public void setCareerNo(Integer careerNo) {
		this.careerNo = careerNo;
	}

	
		
}
