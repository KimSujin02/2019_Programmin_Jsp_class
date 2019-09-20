package jdbcbean;

import javax.naming.*;
import java.sql.*;
import javax.sql.*;

public class DBConnection { //Pool에 있는 데이터를 가져와서 쓸 수 있게 해주는 거임
	public static Connection getConnection() throws SQLException,
		NamingException, ClassNotFoundException {
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/mydb");
			Connection conn = ds.getConnection();
			return conn;
		}

	}