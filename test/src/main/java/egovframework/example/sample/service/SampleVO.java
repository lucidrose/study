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

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

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
	
	// 순번
	private Integer no;
	
	//청구번호
	private Integer billNo;
	
	// 사용내역 코드
	private String useDtlCd;
	
	// 사용내역명
	private String useDtlNm;
	
	//사용 금액
	private String usePrice;
	
	//사용일
	private String useDate;
	
	//승인금액
	private String approvePrice;
	
	//처리상태코드
	private String stateCd;
	
	//처리상태명
	private String stateNm;
	
	//처리일시
	private String stateDate;
	
	//비고
	private String etc;
	
	// 파일명
	private String fileNm;
	
	//파일주소
	private String filePath;
	
	//업로드 파일
	private MultipartFile  uploadFile;
	
	// 검색조건 - 등록연월
	private String searchYm; 
	
	// 검색조건 - 사용내역
	private String searchDetailCode;
	
	// 검색조건 - 처리상태
	private String searchStateCode;

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getBillNo() {
		return billNo;
	}

	public void setBillNo(Integer billNo) {
		this.billNo = billNo;
	}

	public String getUseDtlCd() {
		return useDtlCd;
	}

	public void setUseDtlCd(String useDtlCd) {
		this.useDtlCd = useDtlCd;
	}

	public String getUseDtlNm() {
		return useDtlNm;
	}

	public void setUseDtlNm(String useDtlNm) {
		this.useDtlNm = useDtlNm;
	}

	public String getUsePrice() {
		return usePrice;
	}

	public void setUsePrice(String usePrice) {
		this.usePrice = usePrice;
	}

	public String getUseDate() {
		return useDate;
	}

	public void setUseDate(String useDate) {
		this.useDate = useDate;
	}

	public String getApprovePrice() {
		return approvePrice;
	}

	public void setApprovePrice(String approvePrice) {
		this.approvePrice = approvePrice;
	}

	public String getStateCd() {
		return stateCd;
	}

	public void setStateCd(String stateCd) {
		this.stateCd = stateCd;
	}

	public String getStateNm() {
		return stateNm;
	}

	public void setStateNm(String stateNm) {
		this.stateNm = stateNm;
	}

	public String getStateDate() {
		return stateDate;
	}

	public void setStateDate(String stateDate) {
		this.stateDate = stateDate;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
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

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getSearchYm() {
		return searchYm;
	}

	public void setSearchYm(String searchYm) {
		this.searchYm = searchYm;
	}

	public String getSearchDetailCode() {
		return searchDetailCode;
	}

	public void setSearchDetailCode(String searchDetailCode) {
		this.searchDetailCode = searchDetailCode;
	}

	public String getSearchStateCode() {
		return searchStateCode;
	}

	public void setSearchStateCode(String searchStateCode) {
		this.searchStateCode = searchStateCode;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "SampleVO [no=" + no + ", billNo=" + billNo + ", useDtlCd=" + useDtlCd + ", useDtlNm=" + useDtlNm
				+ ", usePrice=" + usePrice + ", useDate=" + useDate + ", approvePrice=" + approvePrice + ", stateCd="
				+ stateCd + ", stateNm=" + stateNm + ", stateDate=" + stateDate + ", etc=" + etc + ", fileNm=" + fileNm
				+ ", filePath=" + filePath + ", uploadFile=" + uploadFile + ", searchYm=" + searchYm
				+ ", searchDetailCode=" + searchDetailCode + ", searchStateCode=" + searchStateCode + "]";
	}


}