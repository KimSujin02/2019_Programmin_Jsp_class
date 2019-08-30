
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page info="미림여자정보과학고등학교 원채린" %>
        <%@ page import = "java.sql.Timestamp" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%=getServletInfo()  %>
	<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = format.format(now);
	%>
	오늘은 <%=strDate %>입니다
</body>
</html>