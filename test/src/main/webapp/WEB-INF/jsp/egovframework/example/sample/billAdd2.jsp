<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>경비 등록/수정</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javaScript" language="javascript" defer="defer">
	    /* 글 등록 function */
	    function fn_egov_save() {
	    	
	     }
	    
	    
	    $(document).ready(function() {
	        console.log( "ready!" );
	    });
	    
    </script>
</head>
<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
 	<form:form commandName="searchVO" id="listForm" name="listForm" method="post" nctype="multipart/form-data">
 		<table class="add">
		    <tr>
		       <th>사용내역*</th>
		       <td><select>
				    <option value="" selected> 선택</option>
				    <option value="식대(야근)">식대(야근)</option>
				    <option value="택시비(야근)">택시비(야근)</option>
				    <option value="택시비(회식)">택시비(회식)</option>
				    <option value="사무용품구매">사무용품구매</option>
				    <option value="교육비">교육비</option>
				    <option value="접대비">접대비</option>
				    </select>
				</td> 
		    </tr>
		    <tr>
		       <th>사용일*</th>
		       <td><input name="useDate" type="date"></td>
		   </tr>
		    <tr>
		       <th>금액*</th>
		       <td><input name="usePrice" type="text"></td>
		   </tr>
		    <tr>
		       	<th>영수증*</th>
		    	<td><input name="imageFile" type="file"></td>
		  </tr>
		
		</table>
		  <input name="registrationDate" type="date" style="display: none" id="currentDate">
		    <script>
		</script> 
		<div class='button'>
		<input type="button" onclick="window.close()" value="닫기"/>
		<input type="submit" value="저장" onclick="window.close()"/>
		</div>
 	</form:form>
 	
</body>
</html>