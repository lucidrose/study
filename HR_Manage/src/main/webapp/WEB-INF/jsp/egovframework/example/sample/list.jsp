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
<title>사원 조회</title>
</head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style type="text/css">
/* .left {
    position: absolute;
    top: 100px;
    left: 80px;
}
.main {
float:left;
padding: 50px;
   /* margin: 10auto;
   text-align: right;
   padding: 0px;
 */ 
 
 #wrapper{
 border:0px;
 width:1054px;
 padding:22px;
 position:absolute;
 top:10px;
 left:50%;
 margin-left:-533px;
 overflow:hidden;
 }
 .main{
 border:0px;
 width:800px;
 float:left;
 padding:10px;
 }
 .left{
 border:0px;
 width:200px;
 float:left;
 padding:10px;
 margin-left:10px;
 }
</style>
<script type="text/javaScript" language="javascript" defer="defer">
	function fn_checkYn() {
		console.log($("input[name='checkbox']").prop("checked"));
	}
	
	// 사원 기본 정부 수정 페이지로 가기
	function fn_select() {
		location.href = "<c:url value='/addMemberView.do'/>" 
	}
</script>
<jsp:include page="left.jsp"></jsp:include>
<body topmargin="0" leftmargin="0">
<form:form commandName="searchVO" id="listForm" name="listForm" method="post">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <!--  <tr> 
    <td height="25"><img src="image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원조회</strong></td>
  </tr> -->
  		<div>
          	<select name="searchDetailCode" id="searchDetailCode">
           		<option value="">전체</option>
           		<option value="01" <c:if test="${searchDetailCode}">selected</c:if> >이름</option>
           		<option value="02" <c:if test="${searchDetailCode}">selected</c:if> >주민등록번호</option>
           	</select> 
            <input name="textfield" type="text" class="INPUT"> <a href="#"><img src="images/egovframework/example/search.gif" width="49" height="18" border="0" align="absmiddle"></a></td>
       </div>
        <tr> 
          <td>
              <tr> 
                <td height="3" background="image/bar_bg1.gif"></td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">수정</a> <img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">인사기록카드</a> <img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">경력정보</a> <img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">근무정보</a> </td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="1" align="right" bgcolor="B1B1B1"></td>
              </tr>
              <tr> 
                <td>
        		<table summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
        			<caption style="visibility:hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
        			<colgroup>
        				<col width="30"/>
        				<col width="140"/>
        				<col width="140"/>
        				<col width="50"/>
        				<col width="80"/>
        				<col width="?"/>
        				<col width="60"/>
        			</colgroup>
        			<!-- <tr>
        				<th align="center">이름</th>
        				<th align="center">주민등록번호</th>
        				<th align="center">성별</th>
        				<th align="center">기술등급</th>
        				<th align="center">상태</th>
        				<th align="center">근무</th>
        			</tr> -->
        			<c:forEach var="result" items="${resultList}" varStatus="status">
            			<tr>
            				<td width="35" height="20" align="center"><input type="checkbox" id="checkbox" name="checkbox" value="checkbox" onClick="fn_checkYn()"></td>
            				<td align="center" class="listtd"><a href="javascript:fn_select('<c:out value="${result.memberNo}"/>')"><c:out value="${result.memberKnm}"/></a></td>
            				<td align="center" class="listtd"><a href="javascript:fn_select('<c:out value="${result.memberNo}"/>')"><c:out value="${result.rrn1}"/> - <c:out value="${result.rrn2}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.gender}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.stat}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.listStat}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.workYdn}"/>&nbsp;</td>
            			</tr>
        			</c:forEach>
        		</table>
				  </td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="1" align="right" bgcolor="B1B1B1"></td>
              </tr>
              
              
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">삭제</a> <img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
                </td>
              </tr>
     
        <tr> 
          <td height="3" background="images/egovframework/example/bar_bg1.gif"></td>
        </tr>
      </table>
</table>
</form:form>
</body>
</html>