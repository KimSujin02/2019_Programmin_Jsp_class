<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<jsp:useBean id="regBean" class="b23.jdbcbean2306.MemberBean"/>
<jsp:setProperty name = "regBean" property="id"/>	
<% request.setCharacterEncoding("UTF-8");  
	String id = request.getParameter("id");	%>
	<jsp:setProperty name = "regBean" property="id"/>
<body bgcolor="#FFFFCC">
	<center>
	<b>비밀번호 확인</b><p/>
	<form name=login method=post action="deletePro.jsp">
		<table border=0 width=280>
			<tr>
				<td>비밀번호 입력</td>
				<td><input type=text name=pwd></td>
			</tr>
			<tr>
				<td colspan=2 align=right>
						<input type=submit value="회원탈퇴">
				</td>
			</tr>
		</table>
		<input type=hidden name=id value="<jsp:getProperty name="regBean" property="id"/>">
	</form>
	</center>
</body>
</html>