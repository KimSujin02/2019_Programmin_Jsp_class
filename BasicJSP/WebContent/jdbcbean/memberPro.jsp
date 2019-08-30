<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="regBean" class="jdbcbean.MemberBean"/>
    <jsp:setProperty name = "regBean" property="*"/>
    
    <!-- 
    	=> MemberBean의 있는 변수 모든값을 "*"(아스타)기호로 가져온다.
		=> id 값만 가져오고 싶으면 "id"로 하면 됨
     -->
     
     <jsp:useBean id="regDbBean" class="jdbcbean.MemberDbBean"/>
     <%
     	regDbBean.insert(regBean);
     %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 확인</title>
</head>
<body bgcolor="#FFFFCC">
<table width="80%" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td align="center" valign="middle" bgcolor="#FFFFCC">
		<table width="90%" border=1 cellspacing="0" cellspacing="2" align="center">
		<form name=regForm method=post action="memberProInsert.jsp">
			<tr align=center bgcolor="#996600">
				<td colspan="3"><font color="#FFFFFF"><b>
					<jsp:getProperty name="regBean" property="name"/> 
				회원님이 작성하신 내용입니다. 확인해주세요</b></font></td>
			</tr>
			<tr>
				<td width=20%>아이디</td>
				<td><jsp:getProperty name="regBean" property="id"/></td>
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
				<td>주민등록번호</td>
				<td><jsp:getProperty name="regBean" property="num1"/>-<jsp:getProperty name="redDbBean" property="num2"/></td>
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
				<td colspan=2><input type=submit value="회원정보수정" action="update.jsp"> </td>
			</tr>
		</table>
		<input type="hidden" name="id" value="<jsp:getParameter>" name="regBean" property="id"/>
	</form>
</table>

</body>
</html>