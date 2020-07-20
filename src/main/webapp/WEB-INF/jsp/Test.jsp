<%--
  Created by IntelliJ IDEA.
  User: kasun
  Date: 7/20/2020
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Librarian Dashboard</title>
    <meta name="generator" content="Bootply"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!--[if lt IE 9]> -->
    <%--    <script src="/resources/core/js/jquery.js"></script>--%>
    <spring:url value="/resources/core/js/jquery.js"
                var="jqueryJS" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.3/angular.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--    <link rel="stylesheet" type="text/css" href="/resources/core/css/jquery.datetimepicker.min.css"/>--%>
    <spring:url value="/resources/core/css/jquery.datetimepicker.min.css"
                var="jqueryDateTimePickerMinCss" />
    <%--    <script src="/resources/core/js/build/jquery.datetimepicker.full.min.js"></script>--%>
    <spring:url value="/resources/core/js/build/jquery.datetimepicker.full.min.js"
                var="jqueryDateTimePickerFullMinJS" />

    <title>testing jsp</title>
</head>
<script>

    $(document).ready(function () {
        var url = "http://localhost:8081/LibraryManagement_war/api/v1/getAllBooks";

        $.ajax({
            type: "GET",
            dataType:"json",
            authorization:"Basic asdfasfasgdvadfsfa",
            // contentType: "application/json; charset=utf-8",
            url: "http://localhost:8081/LibraryManagement_war/api/v1/getAllBooks"
        }).success(function(data){
            var jsondata = JSON.parse(data);

            console.log("here");
            console.log("" + data);
            var jsonData = data;
            console.log(jsonData.length);
            console.log(jsonData);
            var html = '<br><br><br><div class="table-responsive">' +
                '<table class="table">' +
                '<thead>' +
                '<tr>' +
                '<th>ID </th>' +
                '<th>ISBN </th>' +
                '<th>Book Name </th>' +
                '<th>Writer </th>' +
                '<th>Publisher </th>' +
                '<th>Price </th>' +
                '<th>Year </th>' +
                '<th>No. of copies </th>' +
                '<th>Edition</th>' +
                '<th align="center" >Actions</th>' +
                '</tr>';
            for (i = 0; i < jsonData.length; i++) {
                //console.log("title string"+JSON.stringify(jsonData[i]));
                html = html + '<tr id = ' + jsonData[i].id + '>';
                html = html + '<td >' + jsonData[i].id + '</td>';
                html = html + '<td>' + jsonData[i].isbn + '</td>';
                html = html + '<td>' + jsonData[i].bookName + '</td>';
                html = html + '<td>' + jsonData[i].writer + '</td>';
                html = html + '<td>' + jsonData[i].publisher + '</td>';
                html = html + '<td>' + jsonData[i].price + '</td>';
                html = html + '<td>' + jsonData[i].manufacturedYear + '</td>';
                html = html + '<td>' + jsonData[i].num_of_copies + '</td>';
                html = html + '<td>' + jsonData[i].edition + '</td>';
                var singleObj = jsonData[i];
                html = html + '<td>' + '  <button class="btn btn-info" id=' + jsonData[i].id + ' onClick="updateBook(\'' + jsonData[i].id + '\',\'' + jsonData[i].id + '\',\'' + jsonData[i].isbn + '\',\'' + jsonData[i].bookName + '\',\'' + jsonData[i].writer + '\',\'' + jsonData[i].publisher + '\',\'' + jsonData[i].price + '\',\'' + jsonData[i].manufacturedYear + '\',\'' + jsonData[i].num_of_copies + '\',\'' + jsonData[i].edition + '\')">Edit</button> <button onClick="return updatebookdetails();" class="btn btn-success" id="updateBookFromUI" >Update</button>' + '</td>';
                html = html + '</tr>';
            }
            html = html + '</table>';
            html = html + '</div>';
            document.find('#container').append(html);
        }).done(function(){
            console.log("[AJAX] Complete: JSON WSDL Lookup");
        });

    })
</script>
<body>
<div id="container">
<h2>
    Welcome to test
</h2>
</div>
</body>
</html>
