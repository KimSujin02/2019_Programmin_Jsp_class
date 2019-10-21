<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
%>
<meta charset="UTF-8">
<title>회원 조회</title>
</head>
<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
<jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean"/>
<%
	regBean = regDbBean.selectMember(id);
%>
<body bgcolor = "#FFFFCC">
	<div align = "center">
		<br	/><br	/>
			<table border = "1" width = "600">
				<tr>
					<td colspan = "3"><b>회원 정보 조회</b></td>
				</tr>
				<tr>
					<td width = "20%">아이디</td>
					<td width = "50%"><%=regBean.getId()%></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><%=regBean.getEmail()%></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><%=regBean.getPhone()%></td>
				</tr>
				<tr>
					<td colspan = "3" align = "center">
					<input type = "button" value = "뒤로가기" onClick = "history.back()"></td>
				</tr>
			</table>
	</div>
	
</body>
</html>