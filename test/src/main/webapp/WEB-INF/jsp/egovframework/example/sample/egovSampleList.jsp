<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>경비 관리</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javaScript" language="javascript" defer="defer">
        var popup;   
        /* 검색버튼 이벤트 함수 */
        function fn_selectList() {
        	/* document.listForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.listForm.submit(); */
           	location.href='/egovSampleList.do?serachYm=' + $("#searchYm").val()
           			+ '&searchDetailCode=' + $("#searchDetailCode").val()
           			+ '&searchStateCode=' + $("#searchStateCode").val();
        }
        // 글 등록 팝업
        function fn_addView() {
        	popup = window.open("/billAddView.do", "PopupAdd", "width=350, height=150");
        }
        
        // 글 수정 및 삭제 팝업화면
        function fn_detailView(billNo) {
        	popup = window.open("/billDetailView.do?billNo=" + billNo,"PopupDtl","width=350, height=650");
        }
    </script>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <input type="hidden" name="selectedId" />
        <div id="content_pop">
        	<!-- 타이틀 -->
        	<div id="title">
        		<ul>
        			<li>경비 관리</li>
        		</ul>
        	</div>
        	<!-- // 타이틀 -->
        	<div id="search">
	        	<ul>
                	<li>
        	            <span class="btn_blue_l">
        	                <a href="javascript:fn_selectList();">검색</a>
        	                <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        	            </span>
        	        </li>
	               </ul>
                	<li>
        	            <span class="btn_blue_l">
        	                <a href="#">초기화</a>
        	                <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        	            </span>
        	        </li>
	               </ul>
                    <li><label for="searchYm">등록연월</label>
                    	<input type="text" name="searchYm" id="searchYm" maxlength="6" value="${searchYm}"/>                    	
                    </li>
                    <li><label for="searchDetailCode">사용내역</label>
                    	<select name="searchDetailCode" id="searchDetailCode">
                    		<option value="">전체</option>
                    		<option value="01" <c:if test="${searchDetailCode eq '01'}">selected</c:if> >식대(야근)</option>
                    		<option value="02" <c:if test="${searchDetailCode eq '02'}">selected</c:if> >택시비(야근)</option>
                    		<option value="03" <c:if test="${searchDetailCode eq '03'}">selected</c:if> >택시비(회식)</option>
                    		<option value="04" <c:if test="${searchDetailCode eq '04'}">selected</c:if> >사무용품구매</option>
                    		<option value="05" <c:if test="${searchDetailCode eq '05'}">selected</c:if> >교육비</option>
                    		<option value="06" <c:if test="${searchDetailCode eq '06'}">selected</c:if> >접대비</option>
                    	</select>                    
                    </li>
                    <li><label for="searchStateCode">처리상태</label>
                    	<select name="searchStateCode" id="searchStateCode">
                    		<option value="">전체</option>
                    		<option value="01" <c:if test="${searchStateCode eq '01'}">selected</c:if> >접수</option>
                    		<option value="02" <c:if test="${searchStateCode eq '02'}">selected</c:if> >승인</option>
                    		<option value="03" <c:if test="${searchStateCode eq '03'}">selected</c:if> >지급완료</option>
                    		<option value="04" <c:if test="${searchStateCode eq '04'}">selected</c:if> >반려</option>
                    	</select>                    
                    </li>
                </ul>
        	</div>
        	<div id="sysbtn">
	        	<ul>
	        	      <li>
	        	          <span class="btn_blue_l">
	        	              <a href="#">엑셀다운로드</a>
	                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
	                      </span>
	                  </li>
	              </ul>
        	  <ul>
        	      <li>
        	          <span class="btn_blue_l">
        	              <a href="javascript:fn_addView();"><spring:message code="button.create" /></a>
                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                      </span>
                  </li>
              </ul>
        	</div>
        	<!-- List -->
        	<div id="table">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
        			<caption style="visibility:hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
        			<colgroup>
        				<col width="30"/>
        				<col width="100"/>
        				<col width="?"/>
        				<col width="90"/>
        				<col width="90"/>
        				<col width="50"/>
        				<col width="100"/>
        			</colgroup>
        			<tr>
        				<th align="center">순번</th>
        				<th align="center">사용일</th>
        				<th align="center">사용내역</th>
        				<th align="center">사용금액</th>
        				<th align="center">승인금액</th>
        				<th align="center">처리상태</th>
        				<th align="center">등록일</th>
        			</tr>
        			<c:forEach var="result" items="${resultList}" varStatus="status">
            			<tr>
            				<%-- <td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td> --%>
            				<td align="center" class="listtd"><c:out value="${result.billNo}"/></a></td>
            				<td align="left" class="listtd"><c:out value="${result.useDate}"/>&nbsp;</td>
            				<td align="center" class="listtd"><a href="javascript:fn_detailView('<c:out value="${result.billNo}"/>')"><c:out value="${result.useDtlNm}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.usePrice}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.approvePrice}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.stateNm}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.regDate}"/>&nbsp;</td>
            			</tr>
        			</c:forEach>
        		</table>
        	</div>
        	<!-- /List -->
        	<%-- <div id="paging">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" />
        	</div> --%>
        </div>
    </form:form>
</body>
</html>
