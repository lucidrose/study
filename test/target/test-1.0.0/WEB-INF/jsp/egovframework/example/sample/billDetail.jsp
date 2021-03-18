<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt"    uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<title> 경비 등록 / 수정 </title>
	</head>	
	<script type="text/javaScript" language="javascript" defer="defer">
		// 폼 시작할 때
		$(document).ready(function() {
			if('${resultList.stateCd}' == '01' || '${resultList.stateCd}' == '') {
				$("#btnSave").show();
				$("#btnDel").show();
			} else {
				$("#btnSave").hide();
				$("#btnDel").hide();
			}
			
			if('${deleteYn}' == 'Y') {
	    		alert("삭제되었습니다.");
	    	   opener.parent.fn_popCallBack('del');
	        } 
		})
		
		// 저장버튼 실행할 때 - 업데이트
		function fn_save() {
		/* 	var url = "";
			if('${resultList.billNo}'){
				alert("succeess");
	    		url = "<c:url value='/updateDetail.do'/>";
	    	}
			
			console.log("url : " + url)
	    	 */
	    	/* $("#detailForm").prop('action', '/updateDetail.do');
	        $("#detailForm").prop('method', 'post');
	        $("#detailForm").submit(); */
			document.detailForm.action = "<c:url value='/updateDetail.do'/>";
         	document.detailForm.method= "post";
         	document.detailForm.submit();
         	
		}
		
		function fn_delete() {
			document.detailForm.action = "<c:url value='/delete.do'/>";
         	document.detailForm.method= "post";
         	document.detailForm.submit();
		}
	
	</script>

<body>
	<form:form commandName="searchVO"  id="detailForm"  name="detailForm" enctype="multipart/form-data">
		<%--  <form:input  path="billNo" cssClass="txt"  value="${resultList.billNo}"/> --%>
		 <input  type="text" id="billNo"  name="billNo" value="${resultList.billNo}"/> 
		<h3>사용내역</h3>
		<table class="update" style="float: left;">
		    <tr>
		       <th>사용내역</th>
		       <td><select id="useDtlCd" name="useDtlCd">
					    <option value="" selected> 선택</option>
					    <option value="01" <c:if test="${resultList.useDtlCd eq '01'}">selected</c:if> >식대(야근)</option>
					    <option value="02" <c:if test="${resultList.useDtlCd eq '02'}">selected</c:if> >택시비(야근)</option>
					    <option value="03" <c:if test="${resultList.useDtlCd eq '03'}">selected</c:if> >택시비(회식)</option>
					    <option value="04" <c:if test="${resultList.useDtlCd eq '04'}">selected</c:if> >사무용품구매</option>
					    <option value="05" <c:if test="${resultList.useDtlCd eq '05'}">selected</c:if> >교육비</option>
					    <option value="06" <c:if test="${resultList.useDtlCd eq '06'}">selected</c:if> >접대비</option>
					</select>
				</td> 
		    <tr>
		       <th>사용일</th>
		      <%--  <td><input name="useDate" type="date" value="${resultList.useDate}"></td> --%>
		       <td> <form:input path="useDate" maxlength="8" cssClass="txt" value="${resultList.useDate}"/></td>
		   </tr>
		    <tr>
		       <th>금액</th>
		       <td><input name="usePrice" type="text" value="${resultList.usePrice}"></td>
		   </tr>
		    <tr>
		       	<th>영수증</th>
		    	<td><input name="imageFile" type="file" id="input_img" value="${resultList.fileNm}"></td>
		  </tr>
		</table>
		
		<div class="update_image">
			<h3>영수증</h3>
			<img id="img" style="height: 150px;"/>
			<br>
		</div>
		<h3>청구내역</h3>
		<table class="update">
		    <tr>
		       <th>처리상태</th>
		       <td><select id="stateCd" name="stateCd">
					    <option value="" selected> 선택</option>
					    <option value="01" <c:if test="${resultList.stateCd eq '01'}">selected</c:if> >접수</option>
					    <option value="02" <c:if test="${resultList.stateCd eq '02'}">selected</c:if> >승인</option>
					    <option value="03" <c:if test="${resultList.stateCd eq '03'}">selected</c:if> >지급완료</option>
					    <option value="04" <c:if test="${resultList.stateCd eq '04'}">selected</c:if> >반려</option>
					</select>
				</td> 
		   </tr>
		    <tr>
		       <th>처리일시</th>
		       <td><input name="stateDate" type="date"id="currentDate" value="${resultList.stateDate}" >
		       </td>
		   </tr>
		    <tr>
		       <th>금액</th>
		       <td><input name="approvePrice" type="text" value="${resultList.approvePrice}" ></td>
		   </tr>
		    <tr>
		       	<th>비고</th>
		    	<td><input name="etc" type="text" value="${resultList.etc}"></td>
		  </tr>
		</table>
		<span class="btn_blue_l">
                 <a href="javascript:fn_save();">수정</a>
                 <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        </span>
		<!-- <input type="submit" id ="btnSave" value="저장" onclick="window.close()"/> -->
		<!-- <input type="button" id="btnDel" value="삭제"> -->
		<span class="btn_blue_l">
                 <a href="javascript:fn_delete();">삭제</a>
                 <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        </span>
		<input type="button" onclick="window.close()"value="닫기">
	</form:form>
</body>
</html>