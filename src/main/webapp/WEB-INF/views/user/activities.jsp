<!DOCTYPE html>
<%@page info="Activities Page" session="true"%>
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

<!-- Favicons
================================================== -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/assets/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/assets/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/assets/img/apple-touch-icon-114x114.png">

<!-- JS
================================================== -->
<script src="${pageContext.request.contextPath}/resources/assets/jquery-1.8.3.min.js"></script>
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
        	<a href="/home"><img src="${pageContext.request.contextPath}/resources/images/activity_logo.png" alt="" /></a>
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

        <!-- Gallery Items
        ================================================== --> 
        <div class="span12 gallery">

            <ul id="filterOptions" class="gallery-cats clearfix">
				<li class=""><a href="${fn:escapeXml(allActivities)}">ALL</a></li>
				<li class=""><a href="${fn:escapeXml(movieActivities)}">MOVIES</a></li>
            </ul>

            <div class="row clearfix">
                <ul class="gallery-post-grid holder">
					<c:forEach var="activity" items="${activityList}" varStatus="lineInfo">
                    <!-- Gallery Items -->
                    <li  class="span3 gallery-item" data-id="id-1" data-type="illustration">
                        <span class="gallery-hover-4col hidden-phone hidden-tablet">
                            <span class="gallery-icons">
                                <a href="${pageContext.request.contextPath}/resources/images/${activity.image}" class="item-zoom-link lightbox" title="Custom Illustration" data-rel="prettyPhoto"></a>
                                <a href="${pageContext.request.contextPath}/resources/images/${activity.image}" class="item-details-link"></a>
                            </span>
                        </span>
                        <spring:url value="/activities/{activityId}" var="activityUrl">
							<spring:param name="activityId" value="${activity.id}"/>
						</spring:url>
						
                        <a href="${fn:escapeXml(activityUrl)}"><img src="${pageContext.request.contextPath}/resources/images/${activity.image}" alt="Gallery"></a>
                        <span class="project-details">
	            			<a href="${fn:escapeXml(activityUrl)}"><c:out value="${activity.title}"/></a>
                        </span>
                    </li>
                    </c:forEach>

                </ul>
            </div>

            <!-- Pagination -->
            <div class="pagination">
                <ul>
                <li class="active"><a href="#">Prev</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">Next</a></li>
                </ul>
            </div>

        </div><!-- End gallery list-->

    </div><!-- End container row -->
    
    </div> <!-- End Container -->

    <!-- Footer Area
        ================================================== -->

	<div class="footer-container"><!-- Begin Footer -->
    	<div class="container">
        	<div class="row footer-row">
                <div class="span3 footer-col">
                    <h5>About Us</h5>
                   <img src="${pageContext.request.contextPath}/resources/images/activity_small_logo.png" alt="Piccolo" /><br /><br />
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
