<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>include 디렉티브 연습 </h2>
<% 
String name = "kim";
%>

<%@ include file = "top.jsp" %>
<%--bottom.jsp도 인클루드 해야하는데 오류떠서 일단 지움 --%>
</body>
</html>