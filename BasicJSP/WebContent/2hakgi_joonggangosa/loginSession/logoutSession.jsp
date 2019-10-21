<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
	<br><br/>
<%
session.invalidate();
out.println("<h2>로그아웃되었습니다.</h2>");
%>
<form method="post" action="retreive.jsp">
	<input type="submit" value="회원정보조회">
</form>
</body>
</html>