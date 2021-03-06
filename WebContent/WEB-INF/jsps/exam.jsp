<%@ page language="java" import="com.unt.quiz.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quiz</title>
 <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpeg");
}
</style>
<script language ="javascript" >
        var tim;       
        var min = '${sessionScope.min}';
        var sec = '${sessionScope.sec}';
       
        
        function customSubmit(someValue){  
        	 document.questionForm.minute.value = min;   
        	 document.questionForm.second.value = sec; 
        	 document.questionForm.submit();  
        	 }  
			
        function examTimer() {
            if (parseInt(sec) >0) {
			
			    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minute ," + sec+" Seconds";
                sec = parseInt(sec) - 1;                
                tim = setTimeout("examTimer()", 1000);
            }
            else {
			
			    if (parseInt(min)==0 && parseInt(sec)==0){
			    	document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minute ," + sec+" Seconds";
				     alert("Time Up");
				     document.questionForm.minute.value=0;
				     document.questionForm.second.value=0;
				     document.questionForm.submit();
					 
			     }
				 
                if (parseInt(sec) == 0) {				
				    document.getElementById("showtime").innerHTML = "Time Remaining :"+min+" Minute ," + sec+" Seconds";					
                    min = parseInt(min) - 1;
					sec=59;
                    tim = setTimeout("examTimer()", 1000);
                }
               
            }
        }
    </script>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head><br/>

<body onload="examTimer()">


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

<div style="position:absolute;left:50px;top:100px">
<%
  int currentQuestion=((Exam)request.getSession().getAttribute("currentExam")).getCurrentQuestion();
 %>
Current Question ${sessionScope.quest.questionNumber+1} / ${sessionScope.totalNumberOfQuizQuestions}
</div>

<div id="showtime" style="position:absolute;left:800px;top:100px"></div>

 <div style="position:absolute;width:1000px;padding:25px;
  height: 200px;border: 1px solid green ;left:100px;top:200px">
<span>${sessionScope.quest.question}</span><br/><br/>

<form action="exam" method="post" name="questionForm" >
 <c:forEach var="choice" items="${sessionScope.quest.questionOptions}" varStatus="counter">
 <input type="radio" name="answer" value="${counter.count}" >${choice}  <br/>
 </c:forEach> <br/> 
 
 
 <c:if test="${sessionScope.quest.questionNumber > 0}">
 <input type="submit" name="action" value="Previous" onclick="customSubmit()" />
 </c:if>
 
 <c:if test="${sessionScope.quest.questionNumber < sessionScope.totalNumberOfQuizQuestions-1}">
 <input type="submit" name="action" value="Next" onclick="customSubmit()" />
 </c:if> 
 

 <input type="submit" name="action" value="Finish Exam" onclick="customSubmit()" />
 
<input type="hidden" name="minute"/> 
<input type="hidden" name="second"/>

</form>


</div>



</body>
</html>