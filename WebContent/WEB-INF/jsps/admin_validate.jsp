<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String username = request.getParameter("uname");
	out.println("username" + username);
	String password = request.getParameter("psw");
	out.println("password" + password);

	

	final String select_admin = "select * from admin where username='" + username + "' and password='"
			+ password + "'";


	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?useSSL=false", "root",
			"password");

	Statement st = con.createStatement();

	ResultSet rs;
	rs = st.executeQuery(select_admin);
	if (rs.next()) {
		out.println("welcome" + username);
		response.sendRedirect("/Quiz/users");

	} else {
		out.println("Invalid password <a href='admin_login'>try again</a>");
	}
%>