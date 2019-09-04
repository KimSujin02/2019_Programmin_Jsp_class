<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>회원탈퇴</title>
</head>
<%
    request.setCharacterEncoding("utf-8");    
	String id = (String)session.getAttribute("id");
%>
<jsp:useBean id="regBean" class="b23.jdbcbean2306.MemberBean"/>
<jsp:useBean id = "regDbBean" class = "b23.jdbcbean2306.MemberDbBean"/>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br /><br />
		<form method="post" action="deletePro.jsp">	
		<table>
		    <tr>
			    <td align="center" colspan="2"><h4>비밀번호 확인</h4></td>
			</tr>			
				<td>비밀번호 입력</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2">
			  	    <div align="right">
					<input type="submit" value="회원탈회" >&nbsp;
					</div>
		  </td>
		  </tr> </form>
					
		</table>
		</form>
	</div>
</body>
</html>