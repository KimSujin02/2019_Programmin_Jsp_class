<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFCC" ">
	<div align="center">
		<br /><br />
<% request.setCharacterEncoding("utf-8"); %>
<%   
	String id = (String)session.getAttribute("id");    
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String zipcode = request.getParameter("zipcode");
    String address = request.getParameter("address");
    String job = request.getParameter("job");
    Connection conn = null;
    PreparedStatement pstmt = null;        
    String str = "";
    try{
    	String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
    	String dbId = "root";
    	String dbPass = "1234";    	
    	Class.forName("org.gjt.mm.mysql.Driver");  
    	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    	String sql = "update tblregister set email = ? ,  phone=?, zipcode=?, address=?, job=? where id= ? ";    			
    	pstmt= conn.prepareStatement(sql);
    	pstmt.setString(1, email);
    	pstmt.setString(2, phone);
    	pstmt.setString(3, zipcode);
    	pstmt.setString(4, address);
    	pstmt.setString(5, job);
    	pstmt.setString(6, id);    	
    	pstmt.executeUpdate();    
    	str = id +"수정완료 입니다.";
    }catch(Exception e){
    	e.printStackTrace();
    	str = id +"수정실패입니다.";
    }finally{
    	if(pstmt != null)
    		try{ pstmt.close();
    		}catch(SQLException sqle){}
    	if(conn != null)
    		try{ conn.close();
    		}catch(SQLException sqle){}   	
    }
%>
<%=str %>
</div>
</body>
</html>