<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="jdbcbean.MemberDbBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
<%  request.setCharacterEncoding("utf-8"); 
	String id = request.getParameter("id");	
	String pwd = request.getParameter("pwd");
	MemberDbBean regDbBean = new MemberDbBean();
	int Result = regDbBean.selectId(id, pwd);
	String msg = "";
	int result = regDbBean.selectId(id, pwd);
	if(result == 1){ 	
		Cookie cookie = new Cookie("id", id);
		cookie.setMaxAge(2*60);
		response.addCookie(cookie);
		response.sendRedirect("loginCookieMain.jsp");
	} else if (result == 2){
		msg = "ID 오류입니다.";
	%>
	<h2><%=msg %></h2>
	<input type=submit value="뒤로 가기" onClick="history.back(-1);">&nbsp;
<% } else if (result == 3){	
	msg = "Password 오류입니다"; %>
	<input type=submit value="뒤로 가기" onClick="history.back(-1);">
<% } %>
</center>
</body>
</html>