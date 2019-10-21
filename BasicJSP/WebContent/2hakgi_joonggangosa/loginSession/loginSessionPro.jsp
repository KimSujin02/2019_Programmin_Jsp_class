<%@page import="jdbcbean.MemberDbBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC">
<% 
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

MemberDbBean regDbBean = new MemberDbBean();
int result = regDbBean.selectId(id, pwd);
String msg = "";

if(result == 1) {
	session.setAttribute("id", id);
	session.setAttribute("pwd", pwd);
}
else if(result == 2) {
		out.println("id오류입니다.");
}
else {
		msg = "PassWord오류 입니다.";
}

System.out.println("session유효시간 : " + session.getMaxInactiveInterval());
%>
<form method=post action="retreive.jsp">
	<table align=center border=1 cellspacing="0" cellpadding="5">
		<tr>
			<td colspan=3 style="color: #996600" align="center" valign="middle">
				<b><%= id %>님 로그인되었습니다..</b>
			</td>
		</tr>
		<tr valign="top">
			<td height=50>
				<input type=submit value="회원정보조회"></td></form>
			<td><input type=button value="회원정보수정" onClick="javascript:location.href='update.jsp'"></td>
			<td>
				<form method=post action="delete.jsp">
					<input type=submit value="회 원 탈 회">
				</form>
			</td>
		</tr>
	</table>
	<center>
	<form method="post" action="logoutSession.jsp">
	<p>
		<input type="submit" value="로그아웃"> &nbsp;
	</p>
	</form>
	</center>
</body>
