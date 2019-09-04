<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="regBean" class="b23.jdbcbean2306.MemberBean"/>
<jsp:setProperty property="*" name="regBean"/>

<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
%>
<jsp:setProperty property="id" name="regBean"/>
<jsp:useBean id = "regDbBean" class = "b23.jdbcbean2306.MemberDbBean"/>
<%
int result = regDbBean.selectId(id, pwd);
	if(result == 1) {
		session.setAttribute("id", id);
	
%>
<form method="post" action="delete.jsp">
	<table align="center" border="1" cellspacing="0" cellpadding="5">
		<tr>
			<td colspan="3" style="color: #996600" align="center" valign="middle">
				<b><%=id %>님 회원정보 로그인 되었습니다.</b>
			</td>
		</tr>
		<tr valign="top">
			<td>
				<input type="button" value="회원정보조회" onClick="javascript:location.href='update.jsp'">
			</td>
			<td>
				<input type="button" value="회원정보수정" onClick="javascript:location.href='update.jsp'">
			</td>
			<td>
				<input type="button" value="회 원 탈 회" onClick="javascript:location.href='delete.jsp'">
			</td>
		</tr>
	</table>
<% } 
	else if(result == 2 ) {
	out.println("아이디가 틀렸습니다.");
	} 
	else {
	out.println("아이디와 비밀번호 둘 다 클렸습니다.");
	}
	%>
</form>
</body>
</html>