<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleRegister.jsp
  * @Description : Sample Register 화면
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
    
    <title>사원조회
    </title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
    <validator:javascript formName="sampleVO" staticJavascript="false" xhtml="true" cdata="false"/>
    <style type="text/css">
		.leftdiv 
	         { 
	         	float: left; 
	         }
	     .rightdiv 
	         { 
		         float: left;
		         padding : 2%;  
	         } 
	
	</style>
    <script type="text/javaScript" language="javascript" defer="defer">
    
        /* function fn_egov_selectList() {
        	frm = document.detailForm;
           	frm.action = "<c:url value='/addSample.do'/>";
            frm.submit(); */
            
            // 저장 버튼 클릭 >> 저장 & 수정
        function fn_save() {
        	var url = "<c:url value='/addSample.do'/>";
        	/* alert(${sampleVO.memberNo}); */
        	frm = document.detailForm;
        	if('${sampleVO.memberNo}') {
        		url = "<c:url value='/update.do'/>";
        		alert('수정되었습니다');
        	}
        	frm.action = url;
        	frm.submit(); 
        	alert('저장되었습니다');
        	
        }
            
     // 취소 버튼 클릭 >> 목록으로 이동 
        function fn_cancel() {
        	location.href = "<c:url value='/egovSampleList.do'/>";
        }
        
        function fn_menuSelect(value) {
        	if(value == '0'){
        		location.href = "<c:url value='/addView.do'/>";
    		}
        	else if(value == '1'){
        		// 교육 정보
        		alert($("#memberNo").val());
        		/* location.href='/addEduView.do?memberNo='+$("#memberNo").val();  */
        		/* location.href = "<c:url value='/addEduView.do'/>"; */
        		location.href = '/tabView.do?viewNm=' + 'eduNgrad'
	      	    + '&memberNo=' + $("#memberNo").val();
        	}
        	else if(value == '2'){
        		// 자격증 및 보유기술 정보
        		location.href = '/tabView.do?viewNm=' + 'licenseNtech'
	      	    + '&memberNo=' + $("#memberNo").val();
    		}
        	else if(value == '3'){
        		// 프로젝트 정보
        		location.href = '/tabView.do?viewNm=' + 'project'
	      	    + '&memberNo=' + $("#memberNo").val();
    		}
        	else if(value == '4'){
        		// 경력정보
        		location.href = '/tabView.do?viewNm=' + 'career'
	      	    + '&memberNo=' + $("#memberNo").val();
    		}
        	else {
        		// 근무정보
        		location.href = '/tabView.do?viewNm=' + 'work'
	      	    + '&memberNo=' + $("#memberNo").val();
        	}        	
        }
        
    </script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
<div class="leftdiv"><jsp:include page="left.jsp"></jsp:include></div>
<div class="rightdiv">
	<form:form commandName="sampleVO" id="detailForm" name="detailForm">
	   <input type="text" id="memberNo" name ="memberNo" value="${sampleVO.memberNo}"/>
	   <div id="content_pop">
		   <div id="table">
	   			<tr> 
				    <td width="640">&nbsp;</td>
				</tr>
				<tr> 
				    <td height="15" align="left"><img src="images/egovframework/example/icon.gif" width="9" height="9" align="left"> 
				    	<strong>경력 정보 수정 </strong>
				    </td>
				</tr> 
			</div>
		<!-- 교육정보,자격증, 보유기술정보, 프로젝트 정보, 경력정보, 근무정보 -->
			<div id="table">	    
		       	<table width="100%" border="0" cellspacing="1" cellpadding="0">
		            <tr> 
		              <td height="2" background="images/egovframework/example/bar_bg1.gif"></td>
		            </tr>
		            <tr align="center" bgcolor="F8F8F8"> 
		              <td height="26" align="center" bgcolor="#E4EBF1" style="padding-right:10">
		              	<table width="600" border="0" cellspacing="0" cellpadding="0">
		                  <tr> 
		                      <td align="center"><a href="javascript:fn_menuSelect('0')"><strong>기본정보 </strong></a></td>
		                      <td align="center"><strong>|</strong></td>
		                      <td align="center"><a href="javascript:fn_menuSelect('1')"><strong>교육정보 </strong></a></td>
		                      <td align="center"><strong>|</strong></td>
		                      <td align="center"><a href="javascript:fn_menuSelect('2')"><strong>자격증.보유기술 정보 </strong></a></td>
		                      <td align="center"><strong>|</strong></td>
		                      <td align="center"><a href="javascript:fn_menuSelect('3')"><strong>프로젝트 정보</strong></a></td>
		                      <td align="center"><strong>|</strong></td>
		                      <td align="center"><a href="javascript:fn_menuSelect('4')"><strong>경력정보</strong></a></td>
		                      <td align="center"><strong>|</strong></td>
		                      <td align="center"><a href="javascript:fn_menuSelect('5')"><strong>근무정보</strong></a></td>
		                  </tr>
		                </table>
		              </td>
		            </tr>
		            <tr align="center" bgcolor="F8F8F8"> 
		              <td height="3" align="right" background="images/egovframework/example/bar_bg1.gif"></td>
		            </tr>
		         </table>		                
			 </div>
		 <!--  프로필 내용 (사진부터 주민등록번호까지) -->
	    	 <div id="table">
	    	 <table width="100%" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#FFFFFF; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
	    	 	<tr>
	                <td bgcolor="#CCCCCC">
	                	<table width="100%" border="0" cellspacing="1" cellpadding="0">
	                    <tr> 
	                      <td width="97" height="31" align="center" bgcolor="#E4EBF1"><strong>사원명</strong></td>
	                      <td width="128" align="center" bgcolor="#E4EBF1">
	                      	<form:input type="text" path="memberKnm" name="memberKnm" value="${resultMember.memberKnm}" readonly="true"  />
	                      </td>
	                      <td width="131" align="center" bgcolor="#E4EBF1"><strong> 주민등록번호 </strong></td>
	                      <td width="239" align="center" bgcolor="#E4EBF1">
	                      	<form:input path="rrn1" name="rrn1" type="text" size="15" value="${resultMember.rrn1}" readonly="true"  /> - <form:input path = "rrn2" name="rrn2" type="text" size="15" value="${resultMember.rrn2}" readonly="true"  /></td>
	                    </tr>
	                  	</table>
	                  </td>
		         </tr>
		      </table>
		      <table width="100%" border="0" cellpadding="0" cellspacing="0">
	      		<tr>
		          <td height="0" align="left" valign="top">
		            <tr>
		              <!-- <td width="16" align="left">■	</td> -->
		              <td>&nbsp;</td>
		             </tr>
		        </tr>  	 
		      </table>		     
		      <table width="100%"  border="0" cellpadding="0" cellspacing="0">
		      	<tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			<td width="100" align="center"><strong>프로젝트명</strong></td>
				                 <td align="left"><strong><form:input path="workProjectNm" name="workProjectNm" type="text" size="86" value="${resultWork.workProjectNm}" /></strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			<td width="100" align="center"><strong>근무장소</strong></td>
				                 <td align="left"><strong><form:input path="place" name="place" type="text" size="86" value="${resultWork.place}" /></strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			<td width="100" align="center"><strong>근무시작일</strong></td>
				                 <td width="150" align="left"><strong><form:input path="workStartDate" name="workStartDate" type="text" size="33" value="${resultWork.workStartDate}" /></strong></td>
				                 <td width="115" align="center"><strong>근무종료일</strong></td>
				                 <td align="left">
				                 	<strong><form:input path="workEndDate" name="workEndDate" type="text" size="33" value="${resultWork.workEndDate}" /></strong>
				                 </td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			<td width="100" align="center"><strong>매출액</strong></td>
				                 <td align="left"><strong><form:input path="salesPrice" name="salesPrice" type="text" size="86" value="${resultWork.salesPrice}" /></strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			<td width="100" align="center"><strong>결제예정일</strong></td>
				                 <td width="150" align="left"><strong><form:input path="signPreDate" name="signPreDate" type="text" size="33" value="${resultWork.signPreDate}" /></strong></td>
				                 <td width="115" align="center"><strong>결제일</strong></td>
				                 <td align="left">
				                 	<strong><form:input path="signDate" name="signDate" type="text" size="33" value="${resultWork.signDate}" /></strong>
				                 </td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			<td width="100" align="center"><strong>거래처</strong></td>
				                 <td width="580" align="left">
				                 	<strong>
				                 		<select style="width:207px;">
			                             	<option value="" >선택하세요</option>
			                             	<option value="1" <c:if test="${resultWork.customer eq '1'}"> selected </c:if>>1</option>
			                             	<option value="2" <c:if test="${resultWork.customer eq '2'}"> selected </c:if>>2</option>
			                             </select> 
				                 	</strong>
				                 </td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>		  
		      </table>
		</div>
		<div id="sysbtn">
    		<ul>
    			<li>
                    <span class="btn_blue_l">
                        <!-- <a href="javascript:fn_egov_selectList();">저장</a> -->
                        <a href="javascript:fn_save();">저장</a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
    			<li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_cancel();">취소</a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
            </ul>
    	</div>
	</form:form>
</div>
</body>
</html>