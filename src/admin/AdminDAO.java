package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db_connection.ConnectionProvider;


public class AdminDAO {
	
	public static List<Result> getUsers() {
		
		List<Result> u = new ArrayList<Result>();
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from results");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Result r = new Result();
				r.setId(rs.getString("id"));
				r.setExam(rs.getString("exam"));
				r.setQuestions(rs.getString("questions"));
				r.setStatus(rs.getString("status"));
				u.add(r);
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	

}
