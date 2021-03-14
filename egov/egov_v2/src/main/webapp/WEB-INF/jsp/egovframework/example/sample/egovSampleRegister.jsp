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
    <title>사원 조회 <%-- <c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
                  <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if> --%>
    </title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
     <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!--For Commons Validator Client Side-->
    <script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
    <validator:javascript formName="sampleVO" staticJavascript="false" xhtml="true" cdata="false"/>
    
    <script type="text/javaScript" language="javascript" defer="defer">
        <!--
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
           	document.detailForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.detailForm.submit();
        }
        
        /* 글 삭제 function */
        function fn_egov_delete() {
           	document.detailForm.action = "<c:url value='/deleteSample.do'/>";
           	document.detailForm.submit();
        }
        
        /* 글 등록 function */
        function fn_egov_save() {
        	frm = document.detailForm;
        	if(!validateSampleVO(frm)){
                return;
            }else{
            	frm.action = "<c:url value="${registerFlag == 'create' ? '/addSample.do' : '/updateSample.do'}"/>";
                frm.submit();
            }
        }
        
        -->
        
        /* 글 등록&수정 function */
        function fn_egov_save() {
        	alert('test');
	        	if($("#kname").val() == null || $("#kname").val() ==''){
					alert("이름이 빈값")
	    		return false;
	    	}
    	
	    	var url = "<c:url value='/addSample.do'/>";
	    	if('${sampleVO.memberno}'){
	    		url = "<c:url value='/updateSample.do'/>";
	    	}
	    	console.log("url : " + url)
	    	document.detailForm.action = url;
	    	document.detailForm.method= "post";
	    	document.detailForm.submit();
        }
        
		/* 삭제 */        
        function fn_egov_delete(){
			
         	document.detailForm.action = "<c:url value='/deleteSample.do'/>";
         	document.detailForm.method= "post";
         	document.detailForm.submit();
         }
		
      /*   function fn_egov_file(){
        	console.log("fn_egov_file : " + $("#filename").val())
        	document.detailForm.filename.value = $("#filename").val();
        	document.detailForm.action =  "<c:url value='/fileDownload.do'/>";
	    	document.detailForm.method= "post";
	    	document.detailForm.submit();
        } */
        // 처음 시작할 때 
        $(document).ready(function() {        	
        	$("#no").val("${sampleVO.memberno}");
        });

        
      
    </script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

<form:form commandName="sampleVO"  id="detailForm"  name="detailForm" enctype="multipart/form-data">
	<input type="text" id="memberno" name ="memberno" value="${sampleVO.memberno}"/>
	<input type="text" id="filename" name="filename" value="${sampleVO.filename}"/>
    <div id="content_pop">
    	<!-- 타이틀 -->
    	<div id="title">
    		<ul>
    			<li><img src="<c:url value='/images/egovframework/example/title_dot.gif'/>" alt=""/>
                </li>
    		</ul>
    	</div>
    	<!-- // 타이틀 -->
    	<div id="table">
    	<table width="100%" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#FFFFFF; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
    		<colgroup>
    			<col width="150"/>
    			<col width="?"/>
    		</colgroup>
        		<tr>
        			<td class="tbtd_caption">memberno</td>
        			<td class="tbtd_content">
        				<input type ="text"  path="no" maxlength="10" disabled="disabled"/>
        			</td>
        		</tr>
    		<%-- </c:if> --%>
    		<tr>
    			<td class="tbtd_caption">kname</td>
    			<td class="tbtd_content">
    				<form:input path="kname" maxlength="30" cssClass="txt"/>
    				&nbsp;<form:errors path="kname" />
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption">ename</td>
    			<td class="tbtd_content">
    				<form:input path="ename" maxlength="30" cssClass="txt"/>
    				&nbsp;<form:errors path="ename" />
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption">jname</td>
    			<td class="tbtd_content">
    				<form:input path="jname" maxlength="30" cssClass="txt"/>
    				&nbsp;<form:errors path="jname" />
    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption">year-month-day</td>
    			<td class="tbtd_content">
    				YEAR : <form:input path="year" maxlength="15" cssClass="txt" style="width:50px;"/>
    				&nbsp;<form:errors path="year" />
    				MONTH : <form:input path="month" maxlength="10" cssClass="txt" style="width:30px;"/>
    				&nbsp;<form:errors path="month" />
    				DAY : <form:input path="day" maxlength="10" cssClass="txt" style="width:30px;"/>
    				&nbsp;<form:errors path="day" />
    			</td>
    			
    		</tr>
    		<tr>
    			<td class="tbtd_caption">gender</td>
    			<td class="tbtd_content">
    				<input type="radio" name="gender" id="gender" value="F" <c:if test="${ sampleVO.gender eq 'F'}">checked="checked"</c:if>/>&nbsp;F
                	<input type="radio" name="gender" id="gender" value="M" <c:if test="${ sampleVO.gender eq 'M'}">checked="checked"</c:if>/>&nbsp;M

    			</td>
    		</tr>
    		<tr>
    			<td class="tbtd_caption"><label for="listStat">stat</label></td>
    			<td class="tbtd_content">
    				<select>
			 			 <option value="1" <c:if test="${sampleVO.stat eq '1'}"> selected </c:if>>SI</option>
			 			 <option value="2" <c:if test="${sampleVO.stat eq '2'}"> selected </c:if>>SM</option>			  			
					</select>
    			</td>
    		</tr>
    		  <tr>
	                <td class="tbtd_caption"><label for="">파일</label></td>
	                <td class="tbtd_content">
	                	<%-- <c:if test="${empty sampleVO.filename}"> --%>
	                   		<input type="file" id="uploadFile" name="uploadFile" value="${sampleVO.filename }" />
	                  	<c:if test="${not empty sampleVO.filename}">
	                   		<a href="javascript:fn_egov_file()" >${sampleVO.filename }</a>
	                   	</c:if> 
	                
	                </td>
         	 </tr> 
         	 
    		<%-- <tr>
    			<td class="tbtd_caption"><label for="rdate"><label for="kname">createdate</label></td>
    			<td class="tbtd_content">
    				<form:textarea path="rdate" rows="5" cols="58" />&nbsp;<form:errors path="rdate" />
                </td>
    		</tr> --%>
    	</table>
      </div>
    	<div id="sysbtn">
    		<ul>
    			<li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_egov_selectList();"><spring:message code="button.list" /></a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
    			<li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_egov_save();"><spring:message code="button.create" />
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                        </a>
                        
                    </span>
                </li>
    			
    			<li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_egov_reset();"><spring:message code="button.reset" /></a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
                <c:if test="${not empty sampleVO.memberno}">
                <li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_egov_delete();"><spring:message code="button.delete" /></a>
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                    </span>
                </li>
             
                	<li>
                    <span class="btn_blue_l">
                        <a href="javascript:fn_egov_file();"><spring:message code="button.create" />
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                        </a>
                        
                    </span>
                </li>
                   </c:if>
            </ul>
    	</div>
    </div>
    <!-- 검색조건 유지 -->
    <input type="hidden" name="searchCondition" value="<c:out value='${searchVO.searchCondition}'/>"/>
    <input type="hidden" name="searchKeyword" value="<c:out value='${searchVO.searchKeyword}'/>"/>
    <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
</form:form>
</body>
</html>