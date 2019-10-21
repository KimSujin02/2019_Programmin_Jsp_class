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
		String NAME = request.getParameter("NAME");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String str="";
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
		
		Class.forName("org.gjt.mm.mysql.Driver"); //try문 안에, 밖에 넣어도 됨. //DB접속
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd); //db 접속
		String sql = "select id, pwd from tblregister where id=?"; //SQL문
		pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
		
		pstmt.setString(1, id);
		rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
		
		if(rs.next()){
			String rPwd = rs.getString("pwd");
			if(rPwd.equals(pwd)){
				sql = "update tblregister set name = ? where id = ?";
	    		   pstmt = conn.prepareStatement(sql);
	    		   pstmt.setString(1, NAME);
	    		   pstmt.setString(2, id);
	    		   pstmt.executeUpdate();
	    	%>
	    	      레코드 수정 완료
	    	<%
	    	   }else
	    		   out.println("패스워드 오류");
	        }else
	        	out.println("아이디 오류");
	        }catch(Exception e){
	        	e.printStackTrace();
	        	str = "레코드 추가 실패";
	        }finally{
	        	if(pstmt != null)
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	        	if(conn != null)
	        		try{ pstmt.close();
	        		}catch(SQLException sqle){}
	        }
	    	%> 
</body>
</html>