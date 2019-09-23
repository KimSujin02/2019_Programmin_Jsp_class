<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 완료</title>
</head>
    <jsp:useBean id="regBean" class="b23.jdbcbean2306.MemberBean"/>
    <jsp:setProperty name = "regBean" property="*"/>
	<jsp:useBean id = "regDbBean" class = "b23.jdbcbean2306.MemberDbBean"/>
	<% 	regDbBean.updateMember(regBean); %>
	
<body bgcolor="#FFFFCC">
<table width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFCC">
		<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form name=regForm method=post action="loginPro.jsp">	
			<tr align=center bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<jsp:getProperty name="regBean" property="id"/>
				회원님의 정보가 수정되었습니다.</b></font></td>
			</tr>
			<tr>
				<td width=20%>구분</td>
				<td>수정자료</td>
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
				<td><jsp:getProperty name="regBean" property="job"/></td>
			</tr>
			<tr>
				<td colspan=2><center><input type=button value="뒤로 가기" onclick="history.back(-1);">&nbsp;
				<input type=button value="로그인" onclick="javascript:location.href='login.jsp'"></td>
			</tr>
		</table>
	</form>
</table>
</body>
</html>