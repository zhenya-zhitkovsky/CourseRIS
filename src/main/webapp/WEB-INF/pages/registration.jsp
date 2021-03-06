<%--
  Created by IntelliJ IDEA.
  User: Evgeniy
  Date: 26.04.2018
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration</title>

    <style>
        <%@include file="/resources/assets/css/bootstrap.min.css"%>
    </style>

    <style>
        <%@include file="/resources/assets/css/navs.css"%>
    </style>

    <style>
        <%@include file="/resources/assets/css/owl.carousel.min.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/bootstrap-datetimepicker.min.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/jquery-ui.min.css"%>
    </style>
    <style>
        <%@include file="/resources/assets/css/style.css"%>
    </style>

    <style>
        <%@include file="/resources/assets/css/responsive.css"%>
    </style>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.min.js"%>
    </script>

    <script type = text/javascript>
        <%@include file="/resources/assets/js/tether.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/bootstrap.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery-ui.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/moment.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.smartmenus.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.parallax.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/jquery.shuffle.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/owl.carousel.min.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/map.js"%>
    </script>
    <script type = text/javascript>
        <%@include file="/resources/assets/js/main.js"%>
    </script>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>

</head>

<body>

<div class="container">



    <div class="overlay"></div>
    <div class="container ">
        <div class="row ">

            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6  planner">
            </div>
            <!-- planner-->
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6  planner">
                <div class="planner-block">
                    <c:url var="index" value="/tryregister"/>
                    <form:form method = "POST" commandName="user" action="${index}" class="form-planner form-horizontal">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                <div class="form-group ">
                                    <label>Enter your username: </label>
                                    <form:input path="username" type="text"  class="form-control" placeholder="Username" autofocus="true" pattern="[0-9A-Za-z]+" required = "true"/>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group ">
                                    <label>Enter your password(letters and numbers, >6):</label>
                                    <form:input path="password" type="password" pattern="[0-9A-Za-z]{6,22}" class="form-control" placeholder="Password" required = "true"/>
                                </div>
                            </div>

                            <div class = "col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group ">
                                    <label>Enter your password:</label>
                                    <form:input path="confirmPassword" type="password" class="form-control" placeholder="Password" required = "true"/>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 ${error != null ? 'has-error' : ''} ">
                                ${error}
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="planner-check-left">
                                    <a href="/login" class = "btn btn-default" type="submit" value="">Back</a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="planner-check-availability">
                                    <input class = "btn btn-default" type="submit" value="Register"/>
                                </div>
                            </div>

                        </div>
                    </form:form>
                </div>
            </div>

            <!-- /planner-->
        </div>





    </div>
    <!-- /container -->



</div>
<!-- /container -->

</body>

</html>