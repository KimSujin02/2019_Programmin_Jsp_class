package jdbcbean;
import java.sql.*;

public class MemberDbBean {
	
		final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
		final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
		final String USER = "root";
		final String PASS = "mirim2";
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
	
	public void insert(MemberBean regBean) { 
		sql = "insert into tblRegister(id, pwd, name, num1, num2, email, phone, zipcode, address, jobs) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; //SQL문
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, regBean.getId()); 
			pstmt.setString(2, regBean.getPwd());
			pstmt.setString(3, regBean.getName()); //쿼리 실행 form 생성 완료
			pstmt.setString(4, regBean.getNum1());
			pstmt.setString(5, regBean.getNum2());
			pstmt.setString(6, regBean.getEmail()); 
			pstmt.setString(7, regBean.getPhone());
			pstmt.setString(8, regBean.getZipcode()); //쿼리 실행 form 생성 완료
			pstmt.setString(9, regBean.getAddress());
			pstmt.setString(10, regBean.getJobs());
			pstmt.executeUpdate(); //쿼리문을 실행시키는 부분
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터베이스 입력 오류");
		} //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
		
	} //tbl레지스터에 insert
	public MemberBean selectMember(String id) {	//select문 테이블에서 데이터를 가져오는데,
		MemberBean mb = new MemberBean();
		sql = "select * from tblregister where id=?"; //SQL문
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery(); //쿼리문을 실행시키는 부분
			
			mb.setId(rs.getString("id"));
			mb.setPwd(rs.getString("pwd"));
			mb.setName(rs.getString("name"));
			mb.setNum1(rs.getString("num1"));
			mb.setNum2(rs.getString("num2"));
			mb.setEmail(rs.getString("email"));
			mb.setPhone(rs.getString("phone"));
			mb.setZipcode(rs.getString("zipcode"));
			mb.setAddress(rs.getString("address"));
			mb.setJobs(rs.getString("jobs"));
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("데이터 불러오기 오류");
		} //쿼리문 실행 준비 (insert문 실행), executeQuery문은 select문 실행
		return mb;
	}
}