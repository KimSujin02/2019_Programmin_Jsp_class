<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = (String)session.getAttribute("id");
    String pwd = request.getParameter("pwd");
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String str = "";
    try{
    	String jdbcUrl = "jdbc:mysql://localhost:3307/mydb";
    	String dbId = "root";
    	String dbPass = "1234";
    	Class.forName("org.gjt.mm.mysql.Driver");
    	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
    	
    	String sql = "select pwd from tblregister where id = ?";
    	pstmt= conn.prepareStatement(sql);    	
    	pstmt.setString(1, id);    	    	
    	rs = pstmt.executeQuery();    	
    	if(rs.next()){    		
			String rPwd = rs.getString("pwd");			
			if(pwd.equals(rPwd)){
				sql = "delete from tblregister where id= ? ";    			
				pstmt= conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();	%>
	           	회원 탈회완료입니다.
	    
	 <%     
	        }else
	              out.println("패스워드가 틀렸습니다.");	     
	   }else
	   	    out.println("아이디가 틀렸습니다.");   	
    	
    }catch(Exception e){
    	e.printStackTrace();
    	str = id +"회원 탈회 실패입니다.";
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