<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<% String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
		
		Class.forName("org.gjt.mm.mysql.Driver"); //try문 안에, 밖에 넣어도 됨. //DB접속
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); //db 접속
		String sql = "select id, pwd from tblregister where id=?"; //SQL문
		pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
		
		pstmt.setString(1, id);
		rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
		
	%>
	<h2>id 로그인 완료입니다.</h2>
</body>
</html>