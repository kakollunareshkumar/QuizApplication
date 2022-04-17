<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="admin.AdminDAO,admin.Result,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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