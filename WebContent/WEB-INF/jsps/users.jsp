<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="admin.AdminDAO,admin.Result,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpeg");
}
.button {
	padding: 10px 15px;
	font-size: 14px;
	line-height: 100%;
	text-shadow: 0 1px rgba(0, 0, 0, 0.4);
	color: #fff;
	
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
	font-weight: bold;
	transition: background 0.1s ease-in-out;
	-webkit-transition: background 0.1s ease-in-out;
	-moz-transition: background 0.1s ease-in-out;
	-ms-transition: background 0.1s ease-in-out;
	-o-transition: background 0.1s ease-in-out;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	color: #fff;
	-webkit-border-radius: 40px;
	-moz-border-radius: 40px;
	border-radius: 40px;
	font-family: 'Helvetica Neue', Helvetica, sans-serif;
}
.button, .button:hover, .button:active {
	outline: 0 none;
	text-decoration: none;
        color: #fff;
}
.username {
	background-color: #2ecc71;
	box-shadow: 0px 3px 0px 0px #239a55;
}
</style>


</head>
<body>
	<div class="topnav" id="myTopnav">
	
	</div>

<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>User Login</span></a></li>
    <li><a href='${pageContext.request.contextPath}/admin_login'><span>Admin Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
   <!-- <li class='#'><a href='#'><span>Submit a Question</span></a></li> -->
   <li><a href='${pageContext.request.contextPath}/feedback'><span>Feedback</span></a></li>
   <!-- <li><a href='#'><span>Contribute</span></a></li> -->
   <li><a href='${pageContext.request.contextPath}/contact'><span>Contact us</span></a></li>
   <li><a href='${pageContext.request.contextPath}/logout'><span>Logout</span></a></li>
</ul>
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