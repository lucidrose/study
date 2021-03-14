<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type"content="text/html; charset-UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="css/custom.css">
	<title>JSP Ajax 실시간 회원제 채딩 서비스</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=wsap" rel="stylesheet" />
	
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("UserID");
		}
	%>
	<nav>
		<div class="logo">
			<h4>실시간 회원제 채팅 서비스</h4>
		</div>
		<ul class="nav-links">
			<li><a href="#">메인</a></li>
			<li><a href="#">자유게시판</a></li>
			<%
				if(userID == null) {
			%>
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>
			<%
				}
			%>
		</ul>
	</nav>
	<Script src="app.js"></Script>
</body>
</html>