<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title> 경비 등록 / 수정 </title>
</head>
<body>
	<form action='../expense/update.do' method='post' enctype='multipart/form-data'  target="list.do">
	<input name="expenseNo" type="hidden">
	<h3>사용내역</h3>
	<table class="update" style="float: left;">
	    <tr>
	       <th>사용내역</th>
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
	    <tr>
	       <th>사용일</th>
	       <td><input name="useDate" type="date"></td>
	   </tr>
	    <tr>
	       <th>금액</th>
	       <td><input name="usePrice" type="text"></td>
	   </tr>
	    <tr>
	       	<th>영수증</th>
	    	<td><input name="imageFile" type="file" id="input_img"></td>
	  </tr>
	</table>
	
	<div class="update_image">
		<h3>영수증</h3>
		<img id="img" style="height: 150px;"/>
		<br>
		<input type="submit" value="저장" onclick="window.close()"/>
		<input type="button" value="삭제">
		<input type="button" onclick="window.close()"value="닫기">
	</div>
	<h3>청구내역</h3>
	<table class="update">
	    <tr>
	       <th>처리상태</th>
	       <td><select id="stateCd" name="stateCd">
				    <option value="" selected> 선택</option>
				    <option value="01">접수</option>
				    <option value="02">승인</option>
				    <option value="03">지급완료</option>
				    <option value="04">반려</option>
				</select>
			</td> 
	   </tr>
	    <tr>
	       <th>처리일시</th>
	       <td><input name="stateDate" type="date"id="currentDate">
	       <script>
	</script> 
	       </td>
	   </tr>
	    <tr>
	       <th>금액</th>
	       <td><input name="approvePrice" type="text" ></td>
	   </tr>
	    <tr>
	       	<th>영수증</th>
	    	<td><input name="etc" type="text"></td>
	  </tr>
	</table>
	
	</form>
</body>
</html>