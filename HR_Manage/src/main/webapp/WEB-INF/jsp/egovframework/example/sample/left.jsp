<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>경비 관리</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javaScript" language="javascript" defer="defer">
        /* 스크립트 */
    	function fn_Add() {
    		location.href = "<c:url value='/addMemberView.do'/>" 
        }
    </script>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr> 
		    <td>&nbsp;</td>
		  </tr>
		  <tr> 
		    <td align="left" valign="top"><table width="170" height="300" border="0" cellpadding="0" cellspacing="0">
		        <tr> 
		          <td height="9"><img src="images/egovframework/example/left_top.gif" width="170" height="9"></td>
		        </tr>
		        <tr> 
		          <td align="center" valign="top" background="images/egovframework/example/left_bg.gif">
				  <table width="150" border="0" cellspacing="0" cellpadding="0">
		              <tr> 
		                <td width="17" height="20"><img src="images/egovframework/example/left_icon.gif" width="11" height="11" align="absmiddle"></td>
		                <td width="133"><a href="#">기본정보</a></td>
		              </tr>
		              <tr> 
		                <td height="20">&nbsp;</td>
		                <!-- <td><a href="javascript:fn_memberAdd()">- 등록</a></td> -->
		                <td><a href="javascript:fn_Add()"> - 등록</a></td>
		              </tr>
		              <tr> 
		                <td height="20"><img src="images/egovframework/example/left_icon.gif" width="11" height="11" align="absmiddle"></td>
		                <td>직원명부</td>
		              </tr>
		              <tr> 
		                <td height="20"><img src="images/egovframework/example/left_icon.gif" width="11" height="11" align="absmiddle"></td>
		                <td>퇴직자현황</td>
		              </tr>
		              <tr> 
		                <td height="20"><img src="images/egovframework/example/left_icon.gif" width="11" height="11" align="absmiddle"></td>
		                <td>예비인력정보</td>
		              </tr>
		              <tr> 
		                <td height="20"><img src="images/egovframework/example/left_icon.gif" width="11" height="11" align="absmiddle"></td>
		                <td>거래처정보</td>
		              </tr>
		              <tr> 
		                <td height="20">&nbsp;</td>
		                <td>- 등록<input type="hidden" id="" name=""></input></td>
		              </tr>
		            </table>
					</td>
		        </tr>
		        <tr> 
		          <td height="9"><img src="images/egovframework/example/left_bottom.gif" width="170" height="9"></td>
		        </tr>
		      </table></td>
		  </tr>
		  <tr> 
		    <td>&nbsp;</td>
		  </tr>
		  <tr> 
		    <td align="left"><table width="170" height="49" border="0" cellpadding="0" cellspacing="0">
		        <tr> 
		          <td align="left" background="images/egovframework/example/left_box.gif">
				 
				  <table width="155" border="0" cellspacing="0" cellpadding="0">
		              <tr> 
		                <td width="17"><img src="images/egovframework/example/left_icon.gif" width="11" height="11" align="absmiddle"></td>
		                <td width="143" height="20"><strong>경력검색</strong></td>
		              </tr>
		              <tr align="right"> 
		                <td colspan="2"><input name="textfield" type="text" class="flat" size="15" maxlength="14"> 
		                  <img src="images/egovframework/example/search.gif" width="49" height="18" align="absmiddle"></td>
		              </tr>
		            </table>
				 
					</td>
		        </tr>
		      </table></td>
		  </tr>
		</table>
    </form:form>
</body>
</html>
