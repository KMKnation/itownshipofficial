package databaseConnection;

import java.sql.*;

public class DBConnection {
	

	public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
		PreparedStatement pst = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String url = "jdbc:mysql://localhost:3306/itownship";
		String username = "root";
		String pass = "1234";
		
		Connection conn = DriverManager.getConnection(url,username,pass);
		pst = conn.prepareStatement(sql);
		return pst;
	}

}
