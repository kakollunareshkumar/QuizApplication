package db_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ConnectionProvider {

	public static Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?useSSL=false", "root",
					"password");
			return con;

		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
		return null;

	}


 
} 
