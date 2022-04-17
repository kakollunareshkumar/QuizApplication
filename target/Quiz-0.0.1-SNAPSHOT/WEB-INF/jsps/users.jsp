<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="admin.AdminDAO,admin.Result,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>
<body>
	<div class="topnav" id="myTopnav">
	
	</div>


<%
		List<Result> list = AdminDAO.getUsers();
		request.setAttribute("list", list);
	%>
	
	<div id="container">
<div id="row">
	<table border="2" width="90%" id="customers">
		<tr>
			<th>Id</th>
			<th>Exam</th>
			<th>No of questions</th>
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