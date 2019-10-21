package jdbcbean;
import java.sql.*;

public class MemberDbBean {
	
		final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
		final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
		final String USER = "root";
		final String PASS = "mirim2";
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = null;
		ResultSet rs = null;
	
	public MemberDbBean() {	
		try {
			Class.forName(JDBC_DRIVER); //드라이브 올리는 거임.
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connection 오류");
		}
	}
	
	public void insertMember(MemberBean member) { 
		sql = "insert into member(id, pwd, email, phone)"
				+ "values (?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId()); 
			pstmt.setString(2, member.getPwd());
			pstmt.setString(6, member.getEmail()); 
			pstmt.setString(7, member.getPhone());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터베이스 입력 오류");
		}
		
	} 
	
	public MemberBean selectMember(String id) {
		System.out.println(id);
		MemberBean regBean = new MemberBean();
		sql = "select * from member where id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				regBean.setId(rs.getString("id"));
				regBean.setPwd(rs.getString("pwd"));
				regBean.setEmail(rs.getString("email"));
				regBean.setPhone(rs.getString("phone"));
			}
	
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터 불러오기 오류");
		}
		return regBean;
	}
	
	public void updateMember(MemberBean member) {
		try {
			sql="update member set email = ?, phone = ?"
				+ "where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(6, member.getId());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int selectId(String inId, String inPwd) {
		int result = 1;
		String id = "";
		String pwd = "";
		try {
			sql = "select id, pwd from member where id=?"; //SQL문
			pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
			
			pstmt.setString(1, inId);
			rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
			
			if(rs.next()){
				String rPwd = rs.getString("pwd");
				if(rPwd.equals(inPwd)){
					result = 1;
	 	   		}else
	 	   			result = 3;
	     	}else
	     		result = 2;
			
	     }catch(Exception e){
	     	e.printStackTrace();
	    }
		return result;
	}
	
	public String deleteMember(String id, String pwd) {
		String str = "";
		sql = "select id, pwd from member where id=?"; //SQL문
		try {
			pstmt = conn.prepareStatement(sql); //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
			
			if(rs.next()){
				String rPwd = rs.getString("pwd");
				if(rPwd.equals(pwd)){
					sql = "delete from member where id = ? and pwd=?";
		    		   pstmt = conn.prepareStatement(sql);
		    		   pstmt.setString(1, id);
		    		   pstmt.setString(2, pwd);
		    		   pstmt.executeUpdate();
		    		   str = "탈회 완료되었습니다.";
		    	   }else
		    		   str = "회원 탈퇴 실패";
		        }else
		        	str = "회원 탈퇴 실패";
	        }catch(Exception e){
	        	e.printStackTrace();
	        }
		return str;
	}
	
	public void freeConn() {
		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}