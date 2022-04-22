<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css">
<!-- JQuery CSS -->
<link rel="stylesheet" type="text/css"
	href="http://www.trirand.com/blog/jqgrid/themes/redmond/jquery-ui-1.8.1.custom.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background:
		url("${pageContext.request.contextPath}/images/background.jpeg");
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>UserLogin</span></a></li>
    <li><a href='${pageContext.request.contextPath}/admin_login'><span>AdminLogin</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Create Account</span></a></li>
   <li><a href='${pageContext.request.contextPath}/feedback'><span>Feedback</span></a></li>
   <li><a href='${pageContext.request.contextPath}/contact'><span>Contact us</span></a></li>
</ul>
</div>

	<div style="position: absolute; left: 500px; top: 70px">
		<h3 align="center">Quiz Result</h3>
		<table border=1>
			<tr>
				<td class="head">Quiz :</td>
				<td><span id="lblSubject">${sessionScope.exam}</span></td>
			</tr>
			<tr>
				<td class="head">Starting Time :</td>
				<td><span id="lblStime">${sessionScope.started}</span></td>
			</tr>


			<tr>
				<td class="head">No. of Questions :</td>
				<td><span id="lblNquestions">10</span></td>
			</tr>

			<tr>
				<td class="head">No. of correct answers :</td>
				<td><span id="lblNcans">${requestScope.result}</span></td>
			</tr>

		</table>

		<%
    
    final String Insert_info = "INSERT INTO results(id,exam,questions,status) VALUES(?,?,?,?)";


	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam?useSSL=false", "root",
			"password");
	
			PreparedStatement ps = con.prepareStatement(Insert_info);
			ps.setString(1,(String)session.getAttribute("id"));
			ps.setString(2,(String)session.getAttribute("exam"));
			ps.setString(3,"10");
			
			 %>
		<c:if test="${requestScope.result >= 5}">
				<%ps.setString(4,"passed"); %>
			
		</c:if>
		<c:if test="${requestScope.result < 5}">
			<%ps.setString(4,"failed"); %>
		</c:if>
		
		<%
			
			
			  
			int row = ps.executeUpdate();
	
    %>

		<c:if test="${requestScope.result >= 5}">
			<h3 align="center">Passed</h3>
		</c:if>
		<c:if test="${requestScope.result < 5}">
			<h3 align="center">Failed</h3>
		</c:if>

		<h2 align="center">
			<a href='${pageContext.request.contextPath}'>Take Another Exam</a>
		</h2>

	</div>


	<input type="hidden" name="hid" id="hid"
		value="<%=session.getAttribute("id")%>">
</body>
</html>