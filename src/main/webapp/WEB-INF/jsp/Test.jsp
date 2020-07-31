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
        var myUrl = "http://localhost:8080/LibraryManagement-0.0.1-SNAPSHOT/api/v1/getAllBooks";



        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: myUrl,
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
                console.log("this is good");
                console.log("" + JSON.stringify(data));
                var booksRecord = data;
                $('#container').append('<br><br><p style="text-align: center; font-weight: bold">Books added/updated by all librarians');
                var html = '<br><br><br><div class="table-responsive">' +
                    '<table class="table">' +
                    '<thead>' +
                    '<tr>' +
                    '<th>Book ID </th>' +
                    '<th>Email </th>' +
                    '<th>Action </th>' +
                    '<th>Status </th>' +
                    '<th>ISBN </th>' +
                    '<th>Author </th>' +
                    '<th># of copies </th>' +
                    '<th>Title </th>' +
                    '<th>Status </th>' +
                    '</tr>';
                for (var key in data) {
                    if (data.hasOwnProperty(key)) {
                        if (data.hasOwnProperty(key)) {
                            var val = data[key];
                        }
                        for (var i in val) {
                            html = html + '<tr>';
                            html = html + '<td>' + val[i].bookId + '</td>';
                            html = html + '<td>' + val[i].userName + '</td>';
                            html = html + '<td>' + val[i].action + '</td>';
                            html = html + '<td>' + val[i].status + '</td>';
                            html = html + '<td>' + val[i].isbn + '</td>';
                            html = html + '<td>' + val[i].author + '</td>';
                            html = html + '<td>' + val[i].noOfCopies + '</td>';
                            html = html + '<td>' + val[i].bookName + '</td>';
                            html = html + '<td>' + val[i].status + '</td>';
                            html = html + '</tr>';
                        }
                    }
                }
                html = html + '</table>';
                html = html + '</div>';
                $('#container').append(html);

            },
            error: function (xhr, status, error) {

                console.log("status"+status);
                console.log("error"+error)
                console.log("text : ", xhr.responseText);


            }

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
