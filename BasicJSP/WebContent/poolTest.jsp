<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "jdbcbean.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = 1>
		<tr> <td>아이디</td><td>이름</td><td>이메일</td><td>전화번호</td></tr>
	<%
		String  sql = "SELECT id, name, email, phone FROM tblregister";//1
		try{
			Connection conn = DBConnection.getConnection(); //2 바로 커넥션 할 수 있는 이유는 DBConnection에서 static으로 했기 때문이다.
			PreparedStatement pstmt = conn.prepareStatement(sql); //3
			ResultSet rs = pstmt.executeQuery(); //4단계 쿼리문 생성
			while(rs.next()) { //5단계 데이타 추출하는 단계(get)
				out.println("<tr>");
				out.println("<td>" + rs.getString("id") + "</td>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("email") + "</td>");
				out.println("<td>" + rs.getString("phone") + "</td>");
				out.println("</tr>");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
	%>
	</table>
</body>
</html>