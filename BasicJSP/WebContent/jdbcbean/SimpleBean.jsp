<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="retest" class="jdbcbean.SimpleBean">
<jsp:setProperty name="retest" property="message" value="빈을 쉽게 정복하자!"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaBean review</title>
</head>
<body>
	<h1>간단한 빈 프로그래밍</h1><br/>
	Message : <jsp:getProperty name="retest" property="message"/>
</body>
</html>