<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
session.setAttribute("id", id);
session.setAttribute("pwd", pwd);
%>
</head>
<body>
id와 password 세선 속성 설정하였습니다.<br>
id 속성값은 <%=id %>이고<br>
password 속성값은 <%=pwd %>입니다.<br>
</body>
</html>