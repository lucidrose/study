<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>인사 관리 시스템</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/style.css'/>"/>
    <validator:javascript formName="sampleVO" staticJavascript="false" xhtml="true" cdata="false"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javaScript" language="javascript" defer="defer">
    	function fn_select(id) {
    		alert(id);
    		document.listForm.selectedId.value = id;
    		document.listForm.action = "<c:url value='/updateMemberView.do'/>";
    		document.listForm.submit();
    	}
    </script>
</head>
<style type="text/css">
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
<body>
<div class="left"> <jsp:include page="left.jsp"></jsp:include></div>
<form id="listForm" name="listForm" method="post">
<table width="50%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td height="25" align="left"><img src="images/egovframework/example/icon.gif" width="9" height="9" align="left"> 
      	<strong>사원조회</strong>
    </td>
  </tr>
  <tr> 
    <td>
    	<table width="640" border="0" cellspacing="0" cellpadding="0">
        <tbody>
        	<tr> 
	          <td height="30" align="right">
	       		 <select name="searchDetailCode" id="searchDetailCode">
	           		<option value="">전체</option>
	           		<option value="01" <c:if test="${searchDetailCode}">selected</c:if> >이름</option>
	           		<option value="02" <c:if test="${searchDetailCode}">selected</c:if> >주민등록번호</option>
	           	</select> 
	           	 <input name="textfield" type="text" class="INPUT"> <a href="#"><img src="images/egovframework/example/search.gif" width="49" height="18" border="0" align="absmiddle"/></a>	
	          </td>
	        </tr>
	        
        <tr> 
          <td><table width="640" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr> 
                <td height="3" background="images/egovframework/example/bar_bg1.gif"></td>
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
				<!-------------------------  리스트 ------------------------------>
				<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
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
 				<!-------------------------  리스트 ------------------------------>
				  </td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="1" align="right" bgcolor="B1B1B1"></td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">삭제</a> <img src="images/egovframework/example/all_icon.gif" width="11" height="11" align="absmiddle"> 
              </tr>
            </tbody></table></td>
        </tr>
        <tr> 
          <td height="3" background="images/egovframework/example/bar_bg1.gif"></td>
        </tr>
      </tbody></table></td>
  </tr>
</tbody></table>

</form>
</body>
</html>
