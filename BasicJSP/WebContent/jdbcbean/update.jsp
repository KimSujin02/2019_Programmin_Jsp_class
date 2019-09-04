<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String)session.getAttribute("id");
	//String id = request.getParameter("id");
%>
</head>
<jsp:useBean id="regBean" class="b23.jdbcbean2306.MemberBean"/>
<jsp:useBean id = "regDbBean" class = "b23.jdbcbean2306.MemberDbBean"/>
<%
	regBean = regDbBean.selectMember(id);
%>
<body bgcolor = "#FFFFCC">
	<div align = "center">
		<br	/><br	/>
		<form method = "post" action = "updatePro.jsp">
			<table border = "1" width = "600">
				<tr>
					<td colspan = "3"><b>회원 정보 수정</b></td>
				</tr>
				<tr>
					<td width = "20%">아이디</td><td width = "50%"><input type="text" name="id" value="<%=regBean.getId()%>" readonly></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%=regBean.getName()%>" readonly></td>
				</tr>
				<tr>
					<td>주민등록번호</td>
					<td><input type="text" name="num1" value="<%=regBean.getNum1()%>" readonly>
					 - <input type="text" name="num2" value="<%=regBean.getNum2()%>" readonly> </td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input name = "email" value = "<%=regBean.getEmail()%>"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input name = "phone" value = "<%=regBean.getPhone()%>"></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input name = "zipcode" value = "<%=regBean.getZipcode()%>"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input name = "address" value = "<%=regBean.getAddress()%>"></td>
				</tr>
				<tr>
					<td>직업</td>
					<td><input name = "jobs" value = "<%=regBean.getJobs()%>"></td>
				</tr>
				<tr>
					<td colspan = "3" align = "center"><input type = "submit" value = "수정하기">&nbsp;&nbsp;
					<input type = "button" value = "뒤로가기" onClick = "history.back()"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>