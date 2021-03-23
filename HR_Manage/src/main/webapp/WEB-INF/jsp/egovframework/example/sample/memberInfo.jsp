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
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javaScript" language="javascript" defer="defer">
		
		//처음 시작할 때 
		$(document).ready(function() {        	
			$("#no").val("${sampleVO.memberNo}");
		});
		
		function fn_save() {
			var url = 'addMember.do';
			
			$("#listForm").prop('action', url);
	        $("#listForm").prop('method', 'post');
	        $("#listForm").submit();
		}
		
		function fn_cancel() {
			location.href = "<c:url value='/HRList.do'/>" 
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
<form:form commandName="sampleVO" id="listForm" name="listForm" method="post" >
	<input type="text" id="no" name="no" value="${sampleVO.memberNo}"/>
	<table width="50%" border="0" cellspacing="0" cellpadding="0">
	  <tr> 
	    <td width="640">&nbsp;</td>
	  </tr>
	  <tr> 
	    <td height="25" align="left"><img src="images/egovframework/example/icon.gif" width="9" height="9" align="left"> 
	      <strong>사원 기본 정보 수정</strong>
	     </td>
	  </tr>
	  <tr> 
	    <td><table width="640" border="0" cellspacing="0" cellpadding="0">
	        <tr> 
	          <td height="15" align="left"><table width="640" border="0" cellspacing="0" cellpadding="0">
	              <tr> 
	                <td><table width="640" border="0" cellspacing="1" cellpadding="0">
	                    <tr> 
	                      <td height="2" background="image/bar_bg1.gif"></td>
	                    </tr>
	                    <tr align="center" bgcolor="F8F8F8"> 
	                      <td height="26" align="center" bgcolor="#E4EBF1" style="padding-right:10"><table width="600" border="0" cellspacing="0" cellpadding="0">
	                          <tr> 
	                              <td align="center"><strong>교육정보 </strong></td>
	                              <td align="center"><strong>|</strong></td>
	                              <td align="center"><strong>자격증.보유기술 정보 </strong></td>
	                              <td align="center"><strong>|</strong></td>
	                              <td align="center"><strong>프로젝트 정보</strong></td>
	                              <td align="center"><strong>|</strong></td>
	                              <td align="center"><strong>경력정보</strong></td>
	                              <td align="center"><strong>|</strong></td>
	                              <td align="center"><strong>근무정보</strong></td>
	                          </tr>
	                        </table></td>
	                    </tr>
	                    <tr align="center" bgcolor="F8F8F8"> 
	                      <td height="3" align="right" background="image/bar_bg1.gif"></td>
	                    </tr>
	                  </table></td>
	              </tr>
	            </table></td>
	        </tr>
	        <tr> 
	          <td height="6" align="center" valign="top">&nbsp;</td>
	        </tr>
	        <tr>
	          <td height="7" align="center" valign="top"><table width="600" border="0" cellspacing="0" cellpadding="0">
	              <tr> 
	                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
	                    <tr> 
	                      <td height="135" align="center" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
	                        <tr>
	                          <td width="144" height="119" align="center"><table width="100" border="0" cellspacing="0" cellpadding="0">
	                            <tr>
	                              <td height="112" bgcolor="#CCCCCC"><table width="100" border="0" cellspacing="1" cellpadding="0">
	                                  <tr>
	                                    <td height="110" bgcolor="#FFFFFF">&nbsp;</td>
	                                  </tr>
	                              </table></td>
	                            </tr>
	                          </table></td>
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
	                      </table></td>
	                    </tr>
	                  </table></td>
	              </tr>
	            </table></td>
	        </tr>
	        <tr> 
	          <td height="7" align="center" valign="top">&nbsp;</td>
	        </tr>
	        <tr> 
	          <td height="13" align="center">
	          	<table width="600" border="0" cellspacing="0" cellpadding="0">
	              <tr> 
	                <td bgcolor="#CCCCCC">
	                	<table width="600" border="0" cellspacing="1" cellpadding="0">
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
	                              <input type="radio" path="calendar" name="calendar" value="양력" <c:if test="${sampleVO.calendar eq '1' }">checked="checked"</c:if>/> 양력 
	                              <input type="radio" path="calendar" name="calendar" value="음력" <c:if test="${sampleVO.calendar eq '2' }">checked="checked"</c:if>/> 음력
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
	                            	<input type="radio" path="gender" name="gender" value="남자" <c:if test="${sampleVO.gender eq '1' }">checked="checked"</c:if>/> 남자 
	                              	<input type="radio" path="gender" name="gender" value="여자" <c:if test="${sampleVO.gender eq '2' }">checked="checked"</c:if>/> 여자 
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
	                            	<input type="radio" path="wedding" name="wedding" value="기혼" <c:if test="${sampleVO.wedding eq '1' }">checked="checked"</c:if>/> 기혼
	                              	<input type="radio" path="wedding" name="wedding" value="미혼" <c:if test="${sampleVO.wedding eq '2' }">checked="checked"</c:if>/> 미혼
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
	            </table>
	           </td>
	        </tr>
	        <tr> 
	          <td height="3" align="center">&nbsp;</td>
	        </tr>
	        <tr>
	          <td height="3" align="center"><table width="107" border="0" cellpadding="1" cellspacing="1">
	            <tr>
	              <td width="49">
	              	<span class="btn_blue_l">
                        <a href="javascript:fn_save()"><spring:message code="button.modify" />
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                        </a>                        
                    </span>
	              </td>
	              <td width="51">
	              	<span class="btn_blue_l">
                        <a href="javascript:fn_cancel()">취소
                        <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                        </a>                        
                    </span>
	              </td>
	            </tr>
	          </table>            </td>
	        </tr>
	        <tr> 
	          <td height="7" align="right">&nbsp;</td>
	        </tr>
	      </table>
	     </td>
	  </tr>
	 </table>
 </form:form>
</body>
</html>