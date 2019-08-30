<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 가입</title>
</head>
<body bgcolor="#FFFFCC">
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String name = request.getParameter("name");
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String zipcode = request.getParameter("zipcode");
    String addr = request.getParameter("address");
    String job = request.getParameter("job");   
    Connection conn = null;
    PreparedStatement pstmt = null;    
    String str = "";
    String s="";
    
    
    
    try{
    	String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
    	String dbId = "root";
    	String dbPass = "1234";    	
    	Class.forName("org.gjt.mm.mysql.Driver");
    	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    	String sql = "insert into tblregister(id, pwd, name, num1, num2, email, phone, zipcode, address, job) values(?, ?, ?,?,?,?,?,?,?,?)";
    	pstmt= conn.prepareStatement(sql);
    	pstmt.setString(1, id);    	pstmt.setString(2, pwd);    	pstmt.setString(3, name); 
    	pstmt.setString(4, num1);  	pstmt.setString(5, num2);    	pstmt.setString(6, email);  
    	pstmt.setString(7, phone); 	pstmt.setString(8, zipcode);   	pstmt.setString(9, addr);
    	pstmt.setString(10, job);  	pstmt.executeUpdate();    	
    	str = "회원 가입 완료했습니다.";        s="sucess";    	
    }catch(Exception e){
    	e.printStackTrace();    	
    	str = "회원 가입 실패했습니다.";    	s="fail";
    }finally{
    	if(pstmt != null)
    		try{ pstmt.close();
    		}catch(SQLException sqle){}
    	if(conn != null)
    		try{ conn.close();
    		}catch(SQLException sqle){}   	
    }
%>
<center>
<br>
<br>
<%= str %>
<%   if(s.equals("sucess")){  %>

 <form method="post" action="login.jsp">
 	<input type="submit" value="로긴">
 </form>
 </center>
<% } %>
</body>
</html>