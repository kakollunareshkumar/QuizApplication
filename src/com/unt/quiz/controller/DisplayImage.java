package com.unt.quiz.controller;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.unt.quiz.DatabaseConnectionFactory;

@WebServlet("/dowImg")
public class DisplayImage extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -195980193502891113L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		String id = req.getParameter("id");
			
			String sql = "select photo from users where id = ?";
			Object [] photo = getImageBytes(sql,id);
			if(photo[0] != null){
			resp.setContentType("image/jpeg");
			 BufferedInputStream in = new BufferedInputStream(new ByteArrayInputStream((byte[])photo[0]));
			 ServletOutputStream outStream = resp.getOutputStream();
	            int i = 0;
	            System.out.print("Hello I am near I");
	            while (i != -1) {
	            	System.out.print("I am in while loop of do GET");
	                i = in.read();
	                outStream.write(i);
	            }
	            in.close();
			}
		}
	

	private Object[] getImageBytes(String sql, String id) {
		System.out.print("I am inside getImageBytes");
		Object[] obj = new Object[1];
		if(id != null && !id.equalsIgnoreCase("0") && !id.equalsIgnoreCase("-1")){
		try(Connection connection = DatabaseConnectionFactory.createConnection();
				PreparedStatement ps = connection.prepareStatement(sql))
				{
			ps.setString(1, id.trim());
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				System.out.print("I am in while loop of getImageBytes");
				obj[0] = rs.getBytes(1);
				
			}
			rs.close();
			rs = null;
				}catch (Exception e) {
					System.out.println("Error while downloading photo");
				}
		}
		return obj;
	}
}
