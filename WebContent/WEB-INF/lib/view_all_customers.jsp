<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>
<body>
	<div class="topnav" id="myTopnav">
	
	</div>

	<%@page import="java.util.*"%>
	<%@page import="admin.AdminDAO,admin.Result"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
	%>
	You are not logged in
	<br />
	<a href="sign_in.jsp">Please Login</a>
	<%
		} else {
	%>
	Welcome
	<%=session.getAttribute("email")%>
	<div class="topnav" id="myTopnav">
	<a href="home.jsp">Home</a>
	<a href='logout.jsp'>Log out</a>
	</div>
	<%
		}
	%>


<%
		List<Result> list = AdminDAO.getUsers();
		request.setAttribute("list", list);
	%>
	
	<div id="container">
<div id="row">
	<table border="2" width="90%" id="results">
		<tr>
			<th>id</th>
			<th>exam</th>
			<th>questions</th>
			<th>status</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getExam()}</td>
				<td>${u.getQuestions()}</td>
				<td>${u.getStatus()}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	<br />


</body>
</html>