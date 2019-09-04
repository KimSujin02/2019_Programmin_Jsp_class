<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
	request.setCharacterEncoding("UTF-8");
%>
    <jsp:useBean id="regBean" class="b23.jdbcbean2306.MemberBean"/>
    <jsp:setProperty name = "regBean" property="*"/>
    	
	<jsp:useBean id="regDbBean" class="b23.jdbcbean2306.MemberDbBean"/>
	<% regDbBean.insertMember(regBean); %>
    
</head>
<body bgcolor="#996600">
<table width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFCC">
		<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form name="regForm" method="post" action="update.jsp">
			<tr align="center" bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<jsp:getProperty name="regBean" property="name"/> 
				회원님이 작성하신 내용입니다. 확인해주세요</b></font></td>
			</tr>
			<tr>
				<td width="24%">아이디</td>
				<td width="41%"><jsp:getProperty name="regBean" property="id"/></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><jsp:getProperty name="regBean" property="pwd"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><jsp:getProperty name="regBean" property="name"/></td>
			</tr>
			<tr>
				<td>주민등록번호1</td>
				<td><jsp:getProperty name="regBean" property="num1"/></td>
			</tr>
			<tr>
				<td>주민등록번호2</td>
				<td><jsp:getProperty name="regBean" property="num2"/></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><jsp:getProperty name="regBean" property="email"/></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><jsp:getProperty name="regBean" property="phone"/></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><jsp:getProperty name="regBean" property="zipcode"/></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><jsp:getProperty name="regBean" property="address"/></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><jsp:getProperty name="regBean" property="jobs"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="확인완료">&nbsp;
					<input type="button" value="다시쓰기" onClick="history.back()">
					<input type="button" value="로그인" onClick="javascript:location.href='login.jsp'">
				 </td>
			</tr>
		</form>
	</table>
	</td>
</tr>
</table>
</body>
</html>