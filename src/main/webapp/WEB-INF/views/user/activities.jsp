<!DOCTYPE html>
<%@page info="Activities Page" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">

<jsp:include page="../fragments/staticFiles.jsp" />

<body>
	<div id="wrapper">
		<jsp:include page="../fragments/bodyHeader.jsp" />
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Browse activities</h2>
					</div>
				</div>
				<hr />
				
	    <spring:url value="/user/activities" var="allActivities"/>
		<spring:url value="/user/movies" var="movieActivities"/>			
			
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Activities	 
                        </div>
                        <div class="panel-body">
							<ul class="nav nav-tabs">
								<li class=""><a href="${fn:escapeXml(allActivities)}">All</a></li>
								<li class=""><a href="${fn:escapeXml(movieActivities)}">Movies</a></li>
							</ul>  
							<div class="tab-content">                      
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        
											<tr>
												<th style="display:none;">Id</th>
												<th>Title</th>
												<th>Category</th>
												<th>Location</th>
												<th>Date</th>
												<th>Rating</th>
											</tr>
                                    </thead>
                                    <tbody>
											<c:forEach var="activity" items="${activityList}"
												varStatus="lineInfo">
												<tr>
													<td style="display:none;">${activity.id}</td>
													<td>
														<spring:url value="/activity/{activityId}" var="activityUrl">
                											<spring:param name="activityId" value="${activity.id}"/>
            											</spring:url>
            											<a href="${fn:escapeXml(activityUrl)}"><c:out value="${activity.title}"/></a>
													</td>
													<td>${activity.category}</td>	
													<td>${activity.location}</td>	
													<td>${activity.dateHappening}</td>
													<td>${activity.roundedRating}</td>																						
												</tr>
											</c:forEach>

                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>				

			</div>

		</div>
	</div>
	     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>	
</body>

</html>