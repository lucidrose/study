<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
            
          $(document).ready(function() {
  	        alert("${fn:length(resultEdu)}");

  	    });
            
            // 저장 버튼 클릭 >> 저장 & 수정
        function fn_save(value) {
        	/* var url = "<c:url value='/addSample.do'/>"; */
        	/* alert(${sampleVO.memberNo}); */
        	/* frm = document.detailForm;
        	if('${sampleVO.memberNo}') {
        		url = "<c:url value='/update.do'/>";
        		alert('수정되었습니다');
        	}
        	frm.action = url;
        	frm.submit(); */ 
        	alert(value);
        	if(value == 'grad')
        	{
        		if(${fn:length(resultGrad)} == 0)
        		{
        			/* location.href = '/tabAdd.do?viewId=' + 'grad'; */
        			$("#save").on("click",function() {
        				alert("test");})
        			}
        		}
        	}
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
	                <td bgcolor="#CCCCCC">
	                	<table width="100%" border="0" cellspacing="1" cellpadding="0">
	                    <tr> 
	                      <td width="97" height="31" align="center" bgcolor="#E4EBF1"><strong>사원명</strong></td>
	                      <td width="128" align="center" bgcolor="#E4EBF1">
	                      	<form:input type="text" path="memberKnm" name="memberKnm" value="${resultMember.memberKnm}" readonly="true" />
	                      	<%-- <c:out value="${result.gender}"/> --%>
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
		          <td height="15" align="left" valign="top">
		            <tr>
		              <td width="16" align="left">■	</td>
		              <td><strong>학력</strong></td>
		             </tr>
		          </td>
		          <td height="10">
		          </td>
		        </tr>  	 
		      </table>
		      <table width="100%"  border="0" cellpadding="0" cellspacing="0">
		      	<tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				                 <td width="109"><strong>
				                 	<form:input path="high" name="high" type="text" size="15" value="${resultGrad.high}" />
				                 </strong></td>
				                 <td width="70"><strong>고등학교</strong></td>
				                 <td width="108"><strong>
				                   <form:input path="hMajor" name="hMajor" type="text" size="15" value="${resultGrad.hMajor}" />
				                 </strong></td>
				                 <td width="56"><strong>과 졸업</strong></td>
				                 <td width="67"><strong>
				                   <form:input path="hYear" name="hYear" type="text" size="15" value="${resultGrad.hMajor}"  />
				                 </strong></td>
				                 <td width="32"><strong>년
				                   
				                 </strong></td>
				                 <td width="66"><strong>
				                   <form:input path="hMonth" name="hMonth" type="text" size="15" value="${resultGrad.hMonth}" />
				                 </strong></td>
				                 <td width="18"><strong>월</strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				                 <td width="109"><strong>
				                   <form:input  path="computer" name="computer" type="text" size="15" value="${resultGrad.computer}" />
				                 </strong></td>
				                 <td width="70"><strong>전산원</strong></td>
				                 <td width="108"><strong>
				                   <form:input  path="cMajor" name="cMajor" type="text" size="15" value="${resultGrad.cMajor}" />
				                 </strong></td>
				                 <td width="56"><strong>과 졸업</strong></td>
				                 <td width="67"><strong>
				                   <form:input  path="cYear" name="cYear" type="text" size="15" value="${resultGrad.cYear}" />
				                 </strong></td>
				                 <td width="32"><strong>년				                   
				                 </strong></td>
				                 <td width="66"><strong>
				                   <form:input  path="cMonth" name="cMonth" type="text" size="15" value="${resultGrad.cMonth}" />
				                 </strong></td>
				                 <td width="18"><strong>월</strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				                 <td width="109"><strong>
				                   <form:input  path="college" name="college" type="text" size="15" value="${resultGrad.college}" />
				                 </strong></td>
				                 <td width="70"><strong>전문대학</strong></td>
				                 <td width="108"><strong>
				                   <form:input  path="coMajor" name="coMajor" type="text" size="15" value="${resultGrad.coMajor}" />
				                 </strong></td>
				                 <td width="56"><strong>과 졸업</strong></td>
				                 <td width="67"><strong>
				                   <form:input  path="coYear" name="coYear" type="text" size="15" value="${resultGrad.coYear}" />
				                 </strong></td>
				                 <td width="32"><strong>년
				                   
				                 </strong></td>
				                 <td width="66"><strong>
				                   <form:input  path="coMonth" name="coMonth" type="text" size="15" value="${resultGrad.coMonth}" />
				                 </strong></td>
				                 <td width="18"><strong>월</strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				                 <td width="109"><strong>
				                   <form:input  path="university" name="university" type="text" size="15" value="${resultGrad.university}" />
				                 </strong></td>
				                 <td width="70"><strong>대학교(명)</strong></td>
				                 <td width="108"><strong>
				                   <form:input  path="uMajor" name="uMajor" type="text" size="15" value="${resultGrad.uMajor}" />
				                 </strong></td>
				                 <td width="56"><strong>과 졸업</strong></td>
				                 <td width="67"><strong>
				                   <form:input  path="uYear" name="uYear" type="text" size="15" value="${resultGrad.uYear}" />
				                 </strong></td>
				                 <td width="32"><strong>년
				                   
				                 </strong></td>
				                 <td width="66"><strong>
				                   <form:input  path="uMonth" name="uMonth" type="text" size="15" value="${resultGrad.uMonth}" />
				                 </strong></td>
				                 <td width="18"><strong>월</strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
		      </table>
		      <div id="sysbtn">
	    		<ul>
	    			<li>
	                    <span class="btn_blue_l" id="save">
	                        <!-- <a href="javascript:fn_egov_selectList();">저장</a> -->
	                        <a href="javascript:fn_save('grad');">저장</a>
	                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
	                    </span>
	                </li>
	            </ul>
	    	 </div>
		      <table width="100%" border="0" cellpadding="0" cellspacing="0">
	      		<tr>
		          <td height="15" align="left" valign="top">
		            <tr>
		              <td width="16" align="left">■	</td>
		              <td><strong>교육</strong></td>
		             </tr>
		          </td>
		          <td height="10">
		          </td>
		        </tr>  	 
		      </table>
		      <table width="100%"  border="0" cellpadding="0" cellspacing="0">
		      <!-- for  start-->
		    <c:choose>
		    	<c:when test="${fn:length(resultEdu) eq 0}">
		    		<tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			 <td width="70"><strong>교육명</strong></td>
				                 <td align="left"><strong><form:input  path="eduNm" name="eduNm" type="text" size="93" /></strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
				  <tr height="30">
	                <td bgcolor="#E4EBF1">
	                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
				      		<tr align="left" bgcolor="#E4EBF1">
				      			 <td width="70"><strong>교육시작일</strong></td>
				                 <td align="left"><strong><form:input  path="eduStartDate" name="eduStartDate" type="text" size="23"  /></strong></td>
				                 <td align="center" width="70"><strong>교육종료일</strong></td>
				                 <td align="left"><strong><form:input  path="eduEndDate" name="eduEndDate" type="text" size="20"  /></strong></td>
				                 <td align="center" width="70"><strong>교육기관</strong></td>
				                 <td align="left"><strong><form:input  path="eduAgency" name="eduAgency" type="text" size="20"  /></strong></td>
				             </tr>
				         </table>	
				     </td> 
				  </tr>
		    	</c:when>  
		    	<c:otherwise>
		    		<c:forEach var="resultEdu" items="${resultEdu}" varStatus="status"> 
				      	<tr height="30">
			                <td bgcolor="#E4EBF1">
			                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
						      		<tr align="left" bgcolor="#E4EBF1">
						      			 <td width="70"><strong>교육명</strong></td>
						                 <td align="left"><strong><form:input  path="eduNm" name="eduNm" type="text" size="93" value="${resultEdu.eduNm}" /></strong></td>
						             </tr>
						         </table>	
						     </td> 
						  </tr>
						  <tr height="30">
			                <td bgcolor="#E4EBF1">
			                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
						      		<tr align="left" bgcolor="#E4EBF1">
						      			 <td width="70"><strong>교육시작일</strong></td>
						                 <td align="left"><strong><form:input  path="eduStartDate" name="eduStartDate" type="text" size="23" value="${resultEdu.eduStartDate}" /></strong></td>
						                 <td align="center" width="70"><strong>교육종료일</strong></td>
						                 <td align="left"><strong><form:input  path="eduEndDate" name="eduEndDate" type="text" size="20" value="${resultEdu.eduEndDate}" /></strong></td>
						                 <td align="center" width="70"><strong>교육기관</strong></td>
						                 <td align="left"><strong><form:input  path="eduAgency" name="eduAgency" type="text" size="20" value="${resultEdu.eduAgency}" /></strong></td>
						             </tr>
						         </table>	
						     </td> 
						  </tr>
						</c:forEach>		    	
		    	</c:otherwise>
		    </c:choose>		    
				  <!-- for  end-->
			</table>				
		</div>
		<div id="sysbtn">
    		<ul>
    			<li>
                    <span class="btn_blue_l">
                        <!-- <a href="javascript:fn_egov_selectList();">저장</a> -->
                        <a href="javascript:fn_save('edu');">저장</a>
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