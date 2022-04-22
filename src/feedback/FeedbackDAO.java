package feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db_connection.ConnectionProvider;


public class FeedbackDAO {
	
	public static List<FeedBack> getFeedBack() {
		
		List<FeedBack> u = new ArrayList<FeedBack>();
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from feedback");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				FeedBack r = new FeedBack();
				r.setName(rs.getString("name"));
				r.setEmail(rs.getString("email"));
				r.setComments(rs.getString("comments"));
				u.add(r);
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	

}
