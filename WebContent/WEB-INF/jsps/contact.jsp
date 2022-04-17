	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
		<html>
	  <head>
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <link rel="stylesheet"
	    href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    
    <title>Contact us</title>
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpeg");
}
.user-icon {
	top:153px; /* Positioning fix for slide-in, got lazy to think up of simpler method. */
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/user-icon.png') no-repeat center;	
}

.pass-icon {
	top:201px;
	background: rgba(65,72,72,0.75) url('${pageContext.request.contextPath}/images/pass-icon.png') no-repeat center;
}


</style>
</head>
<body>
	  
	  
	  <div id='cssmenu'>
<ul>
   <li class=''><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
   <li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
   <li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
  <!--  <li class='#'><a href='#'><span>Submit a Question</span></a></li> -->
    <li><a href='${pageContext.request.contextPath}/feedback'><span>Feedback</span></a></li>
   <!-- <li><a href='#'><span>Contribute</span></a></li> -->
   <li><a href='${pageContext.request.contextPath}/contact'><span>Contact us</span></a></li>
</ul>
</div>


	    <section >
	      <div class="jumbotron" align="center" style="padding-bottom: 15px">
        <div class="container">
	          <h1>Contact us</h1>
	          	            <div class="thumbnail">
	            <a href="http://aith.ac.in/" target="_blank"> <img src="${pageContext.request.contextPath}/images/unt.jpg" alt="image"  style = "width:200px;height: 200px;"/></a>
	          
	          <p><b>Address</b>: University of north Texas</a></p>
	        </div>
	        </div>
	      </div>
	    </section>
	
	    <section class="container">
	    
	      <div class="row" align="center">
	        <%-- <c:forEach items="${products}" var="product"> --%>
	          <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
	            <div class="thumbnail">
	             <img src="${pageContext.request.contextPath}/images/naresh.jpg" alt="image"  style = "width:200px;height: 200px;"/>
	            
	              <div class="caption">
	                <h3>naresh</h3>
	                <p>Mobile : 0000000000</p>
	                <p><a href="mailto:naresh1234@gmail.com">naresh1234@gmail.com</a></p>
	  

	                
	              </div>
	            </div>
	          </div>
	           <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
	            <div class="thumbnail">
	            	             <img src="${pageContext.request.contextPath}/images/siva.jpg" alt="image"  style = "width:200px;height: 200px;"/>
	            
	              <div class="caption">
	                <h3>siva</h3>
	                <p>Mobile : 0000000000</p>
	                <p><a href="mailto:siva1234@gmail.com">siva1234@gmail.com</a></p>
	              </div>
	            </div>
	          </div>
	          
	          <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
	            <div class="thumbnail">
	            	             <img src="${pageContext.request.contextPath}/images/sanjay.jpg" alt="image"  style = "width:200px;height: 200px;"/>
	            
	              <div class="caption">
	                <h3>sanjay</h3>
	                <p>Mobile : 0000000000</p>
	                <p><a href="mailto:sanjay1234@gmail.com">sanjay1234@gmail.com</a></p>
	              </div>
	            </div>
	          </div>
	          <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
	            <div class="thumbnail">
	            	             <img src="${pageContext.request.contextPath}/images/abhinay.jpg" alt="image"  style = "width:200px;height: 200px;"/>
	            
	              <div class="caption">
	                <h3>abhinay</h3>
	                <p>Mobile : 0000000000</p>
	                <p><a href="mailto:abhinay1234@gmail.com">abhinay1234@gmail.com</a></p>
	              </div>
	            </div>
	          </div>
	          
	           <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
	            <div class="thumbnail">
	            	             <img src="${pageContext.request.contextPath}/images/naveen.jpg" alt="image"  style = "width:200px;height: 200px;"/>
	            
	              <div class="caption">
	                <h3>naveen</h3>
	                <p>Mobile : 0000000000</p>
	                <p><a href="mailto:naveen1234@gmail.com">naveen1234@gmail.com</a></p>
	              </div>
	            </div>
	          </div>
	              <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
	            <div class="thumbnail">
	            	             <img src="${pageContext.request.contextPath}/images/bhavya.jpg" alt="image"  style = "width:200px;height: 200px;"/>
	            
	              <div class="caption">
	                <h3>bhavya</h3>
	                <p>Mobile : 0000000000</p>
	                <p><a href="mailto:bhavya1234@gmail.com">bhavya1234@gmail.com</a></p>
	              </div>
	            </div>
	          </div>
	          
	        <%-- </c:forEach> --%>
	      </div>
	    </section>
	  
	  <div style="margin: auto;width: 60%;border: 3px solid #73AD21;padding: 10px;">
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://freedirectorysubmissionsites.com/">link directories</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(33.21094674501628, -97.14717821332046),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(33.21094674501628, -97.14717821332046)});infowindow = new google.maps.InfoWindow({content:'<strong>University of north texas</strong><br>Union circle denton<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script> 
</div>

 
  
 </body>
</html>
	