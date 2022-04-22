<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
<title>Insert title here</title>
<style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpeg");
}
</style>
</head>
<body>
<div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
    <li><a href='${pageContext.request.contextPath}/feedback'><span>Feedback</span></a></li>
   <li><a href='${pageContext.request.contextPath}/contact'><span>Contact us</span></a></li>
</ul>
</div>
<br><br><br>
<h2 align="center">Instruction for ${sessionScope.exam} Quiz : </h2>

<div style="position:absolute;left:500px;top:170px">
<ul style="list-style-type:disc">
 <li>Ten MCQ.</li>
 <li>Time Limit 5 Minutes.</li>
 <li>By clicking finish at any point of time will end quiz. Make sure you confirm twice before submitting quiz.</li>
 <li>Review answer options carefully before answering a question.</li>
 <li>You can make changes to submitted questions by clicking on previous and next.</li>
 <li>All the best for taking exam.</li>
</ul>  
<br><br><br>
</div>

<div  style="position:absolute;left:600px;top:350px">
<button onclick="location.href='${pageContext.request.contextPath}/exam'">Start Exam</button>
</div>


</body>
</html>