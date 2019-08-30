<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	
	<jsp:useBean id = "memberBean" class = "b06.bean.memberBean">
		<jsp:setProperty name = "memberBean" property = "ID" />
		<jsp:setProperty name = "memberBean" property = "password" />
		<jsp:setProperty name = "memberBean" property = "passwordok" />
		<jsp:setProperty name = "memberBean" property = "name" />
		<jsp:setProperty name = "memberBean" property = "birth" />
		<jsp:setProperty name = "memberBean" property = "email" />
	</jsp:useBean>
	
<table border = 1>
	<tr>
		<td colspan = 3>
		<jsp:getProperty name = "memberBean" property = "name" />님이 작성하신 내용입니다. 확인해주세요
		</td>
	</tr>
	<tr>
		<td>
		아이디
		</td>
		<td>
		<jsp:getProperty name = "memberBean" property = "ID" />
		</td>
	</tr>
	<tr>
		<td>
		패스워드
		</td>
		<td>
		<jsp:getProperty name = "memberBean" property = "password" />
		</td>
	</tr>
	<tr>
		<td>
		이름
		</td>
		<td>
		<jsp:getProperty name = "memberBean" property = "name" />
		</td>
	</tr>
	<tr>
		<td>
		생년월일
		</td>
		<td>
		<jsp:getProperty name = "memberBean" property = "birth" />
		</td>
	</tr>
	<tr>
		<td>
		이메일
		</td>
		<td>
		<jsp:getProperty name = "memberBean" property = "email" />
		</td>
		
</table>
</body>
</html>