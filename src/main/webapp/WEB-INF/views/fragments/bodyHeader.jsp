<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<title>Activity</title>

<!-- bootstrap_v3 STYLES-->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap_v3.css"
	rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.css"
	rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link
	href="${pageContext.request.contextPath}/resources/assets/css/custom.css"
	rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>


<nav class="navbar navbar-default navbar-cls-top " role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".sidebar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.html">Activity </a>
	</div>
</nav>
<!-- /. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li class="text-center"><img
				src="${pageContext.request.contextPath}/resources/assets/img/find_user.png"
				class="user-image img-responsive" /></li>


			<li><a href="${pageContext.request.contextPath}/"><i class="fa fa-home fa-3x"></i>
					Home </a></li>
					  				
			<li><a href="${pageContext.request.contextPath}/activities"><i class="fa fa-table fa-3x"></i>
					Activities </a></li>
					
			<li><a href="${pageContext.request.contextPath}/recommendations"><i class="fa fa-edit fa-3x"></i>
					Recommendations </a></li>
			<li><a href="<spring:url value="/logout" htmlEscape="true" />"><i
					class="fa fa-power-off fa-3x"></i> Logout</a></li>
		</ul>

	</div>
</nav>


