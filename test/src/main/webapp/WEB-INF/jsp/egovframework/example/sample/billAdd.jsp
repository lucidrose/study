<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>경비 등록/수정</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javaScript" language="javascript" defer="defer">
	    /* 글 등록 function */
	    function fn_save() {
	    	
	    	console.log(">>>" + $("#useDetailCode").val())
	    	
	    	$("#listForm").prop('action', 'billAdd.do');
	        $("#listForm").prop('method', 'post');
	        $("#listForm").submit();
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
		       <td><select id="useDtlCd" name="useDtlCd">
				    <option value="" selected> 선택</option>
				    <option value="01">식대(야근)</option>
				    <option value="02">택시비(야근)</option>
				    <option value="03">택시비(회식)</option>
				    <option value="04">사무용품구매</option>
				    <option value="05">교육비</option>
				    <option value="06">접대비</option>
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
      	 	 <span class="btn_blue_l">
                <a href="javascript:fn_close();">닫기</a>
                <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
            </span>
       	  	<span class="btn_blue_l">
                 <a href="javascript:fn_save();">저장</a>
                 <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
            </span>
		</div>
 	</form:form>
 	
</body>
</html>