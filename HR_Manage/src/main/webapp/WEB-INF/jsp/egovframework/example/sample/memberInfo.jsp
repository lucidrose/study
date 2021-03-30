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
            frm.submit(); 
        }*/
            
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
        	
        	if($("#memberNo").val() == null || $("#memberNo").val() == "")
        	{
        		alert("사원정보를 먼저 입력 후 저장해 주세요");
        		return false;
        	}
        	
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
				    	<strong>사원 기본 정보 </strong>
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
	               <td height="135" align="center" bgcolor="#E4EBF1">
	               <table width="600" border="0" cellpadding="0" cellspacing="0">
	                 <tr>
	                   <td width="144" height="119" align="center">
	                   <table width="100" border="0" cellspacing="0" cellpadding="0">
	                     <tr>
	                       <td height="112" bgcolor="#CCCCCC">
	                       <table width="100" border="0" cellspacing="1" cellpadding="0">
	                           <tr>
	                             <td height="110" bgcolor="#FFFFFF">&nbsp;</td>
	                           </tr>
	                       </table>
	                       </td>
	                     </tr>
	                   </table>
	                 </td>
	                   <td width="456"><table width="423" border="0" cellspacing="2" cellpadding="0">
	                     <tr>
	                       <td height="2" colspan="2"></td>
	                       </tr>
	                     <tr>
	                       <td width="107" height="26" align="right"><strong>한글이름 :</strong>&nbsp;</td>
	                       <td width="310" height="26">
	                         <form:input type="text" path="memberKnm" name="memberKnm" />
	                       </td>
	                     </tr>
	                     <tr>
	                       <td height="26" align="right"><strong>영문이름 :&nbsp;</strong></td>
	                       <td height="26"> <form:input type="text" path="memberEnm" name="memberEnm" /></td>
	                     </tr>
	                     <tr>
	                       <td height="26" align="right"><strong>한문이름 :</strong>&nbsp;</td>
	                       <td height="26"><form:input type="text" path="memberJnm" name="memberJnm" /></td>
	                     </tr>
	                     <tr>
	                       <td height="26" align="right">
	                       	<strong>주민등록번호 :</strong>&nbsp;
	                       </td>
	                       <td height="26">
	                       	<form:input path="rrn1" name="rrn1" type="text" size="15" /> - <form:input path = "rrn2" name="rrn2" type="text" size="15" />
	                       </td>
	                     </tr>
	                   </table></td>
	                 </tr>
	               </table>
	             </td>   
	            </tr>		
	    	 </table>
	    	 </div>
	    	 <!--  사진파일명부터 주량까지 -->
	    	 <div id="table">
	           <tr> 
	             <td bgcolor="#CCCCCC">
	             	<table width="100%" border="0" cellspacing="1" cellpadding="0">
	                  <tr> 
	                    <td bgcolor="#E4EBF1">
	                    	<table width="526" border="0" cellspacing="1" cellpadding="1">
	                        <tr> 
	                          <td width="102" align="right">
	                          	<strong>사진파일명 :&nbsp;</strong>
	                          </td>
	                          <td width="268"><%-- <form:input path="fileNm" name="fileNm" type="text" size="40" /> --%></td>
	                          <td width="146">
	                          	<font color="#FF0000">
	                          		<img src="images/egovframework/example/bt_search.gif" width="49" height="18">
	                          	</font>
	                          </td>
	                        </tr>
	                      </table>
	                     </td>
	                  </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1">
	                   	<table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="102" align="right"><strong>생년월일 :&nbsp;</strong></td>
	                         <td width="391"><form:input path="bYear" name="bYear" type="text" size="10" /> 년 
	                           <form:input path="bMonth" name="bMonth" type="text" size="7" /> 월 
	                           <form:input path="bDay" name="bDay" type="text" size="7" /> 일 ( 
	                           <input type="radio" path="calendar" name="calendar" value="1" <c:if test="${sampleVO.calendar eq '1' }">checked="checked"</c:if>/> 양력 
	                           <input type="radio" path="calendar" name="calendar" value="2" <c:if test="${sampleVO.calendar eq '2' }">checked="checked"</c:if>/> 음력
	                         </td>
	                       </tr>
	                     </table>
	                    </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="102" align="right"><strong>성별 :&nbsp; </strong></td>
	                         <td width="391"> 
	                         	<input type="radio" path="gender" name="gender" value="1" <c:if test="${sampleVO.gender eq '1' }">checked="checked"</c:if>/> 남자 
	                           	<input type="radio" path="gender" name="gender" value="2" <c:if test="${sampleVO.gender eq '2' }">checked="checked"</c:if>/> 여자 
	                         </td>
	                       </tr>
	                     </table>
	                   </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="102" align="right"><strong>결혼유무 :&nbsp;</strong></td>
	                         <td width="391"> 
	                         	<input type="radio" path="wedding" name="wedding" value="1" <c:if test="${sampleVO.wedding eq '1' }">checked="checked"</c:if>/> 기혼
	                           	<input type="radio" path="wedding" name="wedding" value="2" <c:if test="${sampleVO.wedding eq '2' }">checked="checked"</c:if>/> 미혼
	                          </td>
	                       </tr>
	                     </table></td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right"><strong>년차 :&nbsp;</strong></td>
	                         <td width="392">
	                         	<form:input path="career" name="career" type="text" size="10" /> 
	                         </td>
	                       </tr>
	                     </table>
	                    </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1">
	                   	<table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right"><strong>급여 지급유형 :&nbsp;</strong></td>
	                         <td width="392"> 
	                         	<select>
	                             	<option value="M" <c:if test="${sampleVO.moneyType eq 'M'}"> selected </c:if>>월급</option>
	                             	<option value="W" <c:if test="${sampleVO.moneyType eq 'W'}"> selected </c:if>>주급</option>
	                             	<option value="D" <c:if test="${sampleVO.moneyType eq 'D'}"> selected </c:if>>일급</option>
	                             </select> 
	                           </td>
	                       </tr>
	                     </table>
	                    </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right">
	                         	<strong>희망직무 :&nbsp;</strong></td>
	                         <td width="392"> 
	                         	<select>
	                             	<option value="SI" <c:if test="${sampleVO.workingType eq 'SI'}"> selected </c:if>>SI</option>
	                             	<option value="SM" <c:if test="${sampleVO.workingType eq 'SM'}"> selected </c:if>>SM</option>
	                           	</select> 
	                         </td>
	                       </tr>
	                     </table>
	                    </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right">
	                         	<strong>입사 유형:&nbsp;</strong>
	                         </td>
	                         <td width="392"> 
	                         	<select>
	                             	<option value="1" <c:if test="${sampleVO.joinType eq '1'}"> selected </c:if>>정규직</option>
	                             	<option value="2" <c:if test="${sampleVO.joinType eq '2'}"> selected </c:if>>계약직</option>
	                             	<option value="3" <c:if test="${sampleVO.joinType eq '3'}"> selected </c:if>>프리</option>
	                           	</select> 
	                          </td>
	                       </tr>
	                     </table>
	                   </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1">
	                   	<table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right">
	                         	<strong>주소 :&nbsp;</strong>
	                         </td>
	                         <td width="392"><form:input path="postCd" name="postCd" type="text" size="10" /> 
	                           <form:input path="address" name="address" type="text" size="40" /> 
	                         </td>
	                       </tr>
	                     </table>
	                   </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right">
	                         	<strong>연락처 :&nbsp;</strong>
	                         </td>
	                         <td width="392">
	                         	<form:input path="phoneNo1" name="phoneNo1" type="text" size="10" /> - 
	                           	<form:input path="phoneNo2" name="phoneNo2" type="text" size="10" /> - 
	                           	<form:input path="phoneNo3" name="phoneNo3" type="text" size="10" />
	                          </td>
	                       </tr>
	                     </table>
	                    </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right">
	                         	<strong>이메일 :&nbsp;</strong>
	                         </td>
	                         <td width="392">
	                         	<form:input path="email" name="email" type="text" size="20" /> 
	                         </td>
	                       </tr>
	                     </table>
	                    </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1">
	                   	<table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right">
	                         	<strong>기술등급 :&nbsp;</strong>
	                         </td>
	                         <td width="392">
	                         	<form:input path="stat" name="stat" type="text" size="20" /> 
	                         </td>
	                       </tr>
	                     </table>
	                   </td>
	                 </tr>
	                 <tr> 
	                   <td bgcolor="#E4EBF1">
	                   	<table width="500" border="0" cellspacing="1" cellpadding="1">
	                       <tr> 
	                         <td width="101" align="right">
	                         	<strong>주량 :&nbsp;</strong>
	                         </td>
	                         <td width="392">
	                         	<form:input path="alchol" name="alchol" type="text" size="20" /> 
	                         </td>
	                       </tr>
	                     </table>
	                    </td>
	                 </tr>
	               </table>
	              </td>
	           </tr>
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
		    </div>
	</form:form>
</div>
</body>
</html>