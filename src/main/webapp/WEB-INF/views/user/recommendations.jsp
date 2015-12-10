<!DOCTYPE html>
<%@page info="Recommendations Page" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Activity</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS
================================================== -->
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-responsive.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/prettyPhoto.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/custom-styles.css">

<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="css/style-ie.css"/>
<![endif]--> 

<!-- Favicons
================================================== -->
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/assets/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/assets/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/assets/img/apple-touch-icon-114x114.png">

<!-- JS
================================================== -->
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.quicksand.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.custom.js"></script>

</head>

<body>
	<div class="color-bar-1"></div>
    <div class="color-bar-2 color-bg"></div>
    
    <div class="container main-container">
    
      <div class="row header"><!-- Begin Header -->
      
        <!-- Logo
        ================================================== -->
        <div class="span5 logo">
        	<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/activity_logo.png" alt="" /></a>
            <h5>Rediscover your hobbies</h5>
        </div>
        
        <!-- Main Navigation
        ================================================== -->
        <div class="span7 navigation">
            <div class="navbar hidden-phone">
            
            <ul class="nav">
			 <li><a href="${pageContext.request.contextPath}/">Home</a></li>
             <li><a href="${pageContext.request.contextPath}/activities">Activities</a></li>
			 <li><a href="${pageContext.request.contextPath}/recommendations">Recommendations</a></li>
			 <li><a href="page-contact.htm">Contact</a></li>
			 <li><a href="<spring:url value="/logout" htmlEscape="true" />">Logout</a></li>
            </ul>
           
            </div>

        </div>
        
      </div><!-- End Header -->
     
    <!-- Page Content
    ================================================== --> 
    <div class="row">
		<div class="span12">
		<h2>Your recommendations</h2>
        <p class="lead">	
        				Sorry :( . Currently you don't have any recommendations. <br>
					Help us out by starting to rate activities. <br>
					You can browse them <a href="${pageContext.request.contextPath}/user/activities"><b>here</b></a>.</p>

		</div>
    </div><!-- End container row -->
    
    </div> <!-- End Container -->

    <!-- Footer Area
        ================================================== -->

	<div class="footer-container"><!-- Begin Footer -->
    	<div class="container">
        	<div class="row footer-row">
                <div class="span3 footer-col">
                    <h5>About Us</h5>
                   <img src="${pageContext.request.contextPath}/resources//images/activity_small_logo.png" alt="Piccolo" /><br /><br />
                    <address>
                        <strong>Development Team</strong><br />
                        Bucharest, Romania<br />
                    </address>
                    <ul class="social-icons">
                        <li><a href="#" class="social-icon facebook"></a></li>
                        <li><a href="#" class="social-icon twitter"></a></li>
                        <li><a href="#" class="social-icon dribble"></a></li>
                        <li><a href="#" class="social-icon rss"></a></li>
                        <li><a href="#" class="social-icon forrst"></a></li>
                    </ul>
                </div>
  
            </div>

            <div class="row"><!-- Begin Sub Footer -->
                <div class="span12 footer-col footer-sub">
                    <div class="row no-margin">
                        <div class="span6"><span class="left">Copyright 2012 Piccolo Theme. All rights reserved.</span></div>
                    </div>
                </div>
            </div><!-- End Sub Footer -->

        </div>
    </div><!-- End Footer --> 
    
    <!-- Scroll to Top -->  
    <div id="toTop" class="hidden-phone hidden-tablet">Back to Top</div>
    
</body>
</html>
