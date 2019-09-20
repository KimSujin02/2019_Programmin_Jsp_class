<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 완료</title>
</head>
<jsp:useBean id="regDbBean" class="b23.jdbcbean2306.MemberDbBean"/>
<% 	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="regBean" class="b23.jdbcbean2306.MemberBean"/>
<jsp:setProperty name = "regBean" property="id"/>
<%	String id = (String)session.getAttribute("id"); 
	String pwd = request.getParameter("pwd");	
	String str = "";
	if (regDbBean.selectId(id, pwd) == 1){
		str = regDbBean.deleteMember(id, pwd);
	} else { str = "회원 탈퇴 실패"; }	%>
<body bgcolor="#FFFFCC">
<center>
	<form method=post action="login.jsp">
		<font size=20 color="#996600"><b><%= str %></b></font><p/>
		<input type=submit value="로그인">
	</form>
</center>
</body>
</html>