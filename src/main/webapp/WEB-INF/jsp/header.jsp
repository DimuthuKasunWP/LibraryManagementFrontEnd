<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>LMS</title>

    <spring:url value="/resources/core/css/hello.css" var="coreCss"/>
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>
<script>
    changeScreen=function(){
        window.location.replace("ReservationDashBoard.jsp");
    }

    $("#reservationbtn").click(function () {
    window.location.replace("http://localhost:8080/LibraryManagementFrontEnd-0.0.1-SNAPSHOT/user/reservations");
    })
</script>

<%--<spring:url value="/lmsdashboard" var="urlHome"/>--%>
<spring:url value="/register" var="userlogout"/>

<nav class="navbar navbar-inverse ">
	<div class="container">
        <div class="navbar-header" style="width: 100%">
<%--            <div class="col-md-8">--%>
                <a style="color:white;" class="navbar-brand" onclick="" >Library Management System</a>
<%--            </div>--%>
<%--          <div class="col-md-4">--%>
              <a  style="padding-left:70%;color: white" class="navbar-brand" href="http://localhost:8080/LibraryManagementFrontEnd-0.0.1-SNAPSHOT/user/reservations" >    <button class="btn-info" id="reservationbtn" onclick="">Reservation</button></a>
<%--          </div>--%>
            <%--        <button id="reservationbtn" onclick="changeScreen()"></button>--%>


        </div>

	</div>

</nav>
