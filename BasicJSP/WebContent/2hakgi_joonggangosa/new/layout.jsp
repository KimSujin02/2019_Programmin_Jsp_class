<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border = 1 >
		<tr width = 400>
			<td colspan="2" >
				<jsp:include page="top.jsp">
			</td>
		</tr>
		<tr  height="200" >
			<td width="100" >
				<jsp:include page="left.jsp">
			</td>
			<td width="300" >
				레이아웃
			</td>
		</tr>
		<tr>
			<td colspan="2" > <jsp:include page="bottom.jsp"> </td>
		</tr>
		</jsp:include>
	</table>
</body>
</html>