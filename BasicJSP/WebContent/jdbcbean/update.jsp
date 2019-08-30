<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
	
	<jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
	<jsp:useBean id = "regDbBean" class = "jdbcbean.MemberDbBean"/>
	
	<%  request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		regBean = regDbBean.selectMember(id);
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor = "ffffcc">
<div align = "center">
	<br><br>
	<form method = "post" action = "updatePro.jsp">
		<table border = "1" width = "600">
			<tr>
				<td colspan = "3"><b>회원 정보 수정</b></td>
			</tr>
			<tr>
				<td width = "20%">아이디</td><td width = "50%"><input type = "text" name = "id" value = "<%=regBean.getId()%>" readonly></td></td>
			</tr>
			<tr>
				<td>이름</td><td><input type = "text" name = "name" value = "<%=regBean.getName()%>" readonly></td>
			</tr>
			<tr>
				<td>주민등록번호</td><td><input type = "text" name = "num1" value = "<%=regBean.getNum1()%>" readonly> - <input type = "text" name = "num2" value = "<%=regBean.getNum2()%>" readonly> </td>
			</tr>
			<tr>
				<td>Email</td><td><input type = "text" name = "email" value = "<%=regBean.getEmail()%>"></td>
			</tr>
			<tr>
				<td>전화번호</td><td><input type = "text" name = "phone" value = "<%=regBean.getPhone()%>"></td>
			</tr>
			<tr>
				<td>우편번호</td><td><input type = "text" name = "zipcode" value = "<%=regBean.getZipcode()%>"></td>
			</tr>
			<tr>
				<td>주소</td><td><input type = "text" name = "address" value = "<%=regBean.getAddress()%>"></td>
			</tr>
			<tr>
				<td>직업</td><td><input type = "text" name = "jobs" value = "<%=regBean.getJobs()%>"></td>
			</tr>
			<tr>
				<td colspan = "3" align = "center"><input type = "submit" value = "수정하기">&nbsp;&nbsp;
				<input type = "reset" value = "다시쓰기"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>