<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Servlet 세션</h1>
<%
if(id!=null) {
%>
<%=id %>님 반갑습니다. <br>
<a href='logout.jsp'>로그아웃</a>
<%
} else {
%>
<form action="loginServlet" method="post">
id : <input name="id"><br>
pw : <input type="password" name="pw">
<input type="submit" value="로그인">
</form>
<%} %>
</body>
</html>