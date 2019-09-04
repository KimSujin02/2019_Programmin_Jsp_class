package b23.jdbcbean2306;
import java.sql.*;

public class MemberDbBean {
	
		final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
		final String JDBC_URL = "jdbc:mysql://localhost:3307/mydb";
		final String USER = "root";
		final String PASS = "1234";
		Connection conn;
		PreparedStatement pstmt;
		String sql;
		ResultSet rs;
	
	public MemberDbBean() {	
		try {
			Class.forName("org.gjt.mm.mysql.Driver"); //try문 안에, 밖에 넣어도 됨. //DB접속
			conn = DriverManager.getConnection(JDBC_URL, USER, PASS); //db 접속
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("드라이버 로딩 및 connection 오류");
		}
	} //드라이버 연결
	
	public void insertMember(MemberBean member) { 
		sql = "insert into tblRegister(id, pwd, name, num1, num2, email, phone, zipcode, address, jobs) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId()); 
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getNum1());
			pstmt.setString(5, member.getNum2());
			pstmt.setString(6, member.getEmail()); 
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getZipcode());
			pstmt.setString(9, member.getAddress());
			pstmt.setString(10, member.getJobs());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터베이스 입력 오류");
		}
		
	} 
	
	public MemberBean selectMember(String id) {
		System.out.println(id);
		MemberBean member = new MemberBean();
		
		try {
			sql = "select * from tblregister where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			member.setId(rs.getString("id"));
			member.setPwd(rs.getString("pwd"));
			member.setName(rs.getString("name"));
			member.setNum1(rs.getString("num1"));
			member.setNum2(rs.getString("num2"));
			member.setEmail(rs.getString("email"));
			member.setPhone(rs.getString("phone"));
			member.setZipcode(rs.getString("zipcode"));
			member.setAddress(rs.getString("address"));
			member.setJobs(rs.getString("jobs"));
		}
	
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터 불러오기 오류");
		}
		return member;
	}
	
	public void updateMember(MemberBean member) {
		try {
			sql="update tblregister set email = ?, phone = ?, zipcode = ?, address = ?, jobs = ?"
				+ "where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getZipcode());
			pstmt.setString(4, member.getAddress());
			pstmt.setString(5, member.getJobs());
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
			sql = "select id, pwd from tblregister where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  inId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				id = rs.getString("id");
				pwd = rs.getString("pwd");
				if(pwd.equals(inPwd)) {
					result = 1; //성공
				}else {
					result = 3; //패스워드 오류
				}
			}else {
				result = 2; //id오류
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int deleteMember(String id) {
		int result=0;
		try {
			sql = "delete from tblregister where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			pstmt.executeUpdate();
			result = 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
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