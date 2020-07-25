<%--
  Created by IntelliJ IDEA.
  User: kasun
  Date: 7/25/2020
  Time: 11:42 AM
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
    <title>Welcome To Reservation</title>

</head>
<style>
    .mytext {
        width: 110px;
    }

    #updatebookform, #id1, #id2, #id3 {
        display: inline;
        float: left;
    }

    /*<!-- Making the form awesome --> */
    .form-style-9 {
        max-width: 450px;
        background: #FAFAFA;
        padding: 30px;
        margin: 50px auto;
        box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
        border-radius: 10px;
        border: 6px solid #305A72;
    }

    #label {
        top: 5px;
        box-sizing: border-box;
        position: absolute;
        /*!*background: blue;*!  left: 5%;*/
        width: 1200px;
        /*border:5px solid #990000;*/
        overflow: hidden;
        border-radius: 10px;
        /*background: rgba(60, 85, 100, 0.7);*/
    }

    .form-style-9 ul {
        padding: 0;
        margin: 0;
        list-style: none;
    }

    .form-style-9 ul li {
        display: block;
        margin-bottom: 10px;
        min-height: 35px;
    }

    .form-style-9 ul li .field-style {
        box-sizing: border-box;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        padding: 8px;
        outline: none;
        border: 1px solid #B0CFE0;
        -webkit-transition: all 0.30s ease-in-out;
        -moz-transition: all 0.30s ease-in-out;
        -ms-transition: all 0.30s ease-in-out;
        -o-transition: all 0.30s ease-in-out;
    }

    .form-style-9 ul li .field-style:focus {
        box-shadow: 0 0 5px #B0CFE0;
        border: 1px solid #B0CFE0;
    }

    .form-style-9 ul li .field-split {
        width: 49%;
    }

    .form-style-9 ul li .field-full {
        width: 100%;
    }

    .form-style-9 ul li input.align-left {
        float: left;
    }

    .form-style-9 ul li input.align-right {
        float: right;
    }

    .form-style-9 ul li textarea {
        width: 100%;
        height: 100px;
    }

    .form-style-9 ul li input[type="button"],
    .form-style-9 ul li input[type="submit"] {
        -moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
        -webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
        box-shadow: inset 0px 1px 0px 0px #3985B1;
        background-color: #216288;
        border: 1px solid #17445E;
        display: inline-block;
        cursor: pointer;
        color: #FFFFFF;
        padding: 8px 18px;
        text-decoration: none;
        font: 12px Arial, Helvetica, sans-serif;
    }

    .form-style-9 ul li input[type="button"]:hover,
    .form-style-9 ul li input[type="submit"]:hover {
        background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
        background-color: #28739E;
    }

    /*End form styling*/
    /*Making the modal box awesome*/
    .modal {
        /*//height: 45%;*/
        text-align: center;
        padding: 0 !important;
    }

    .modal-body {
        height: 100%;
    }

    .modal-dialog {
        width: 95%;
        display: inline-block;
        text-align: left;
        vertical-align: middle;
    }

    #viewBooksModal {
        width: 100%;
        left: 23%;
        height: 100%;
        vertical-align: middle;
        margin-left: -23%;
        /*center: 0%;*/
    }

    #viewBooksContent {
        width: 100%;
        height: auto;
        vertical-align: middle;
    }

    /*End modal styling*/
</style>
<script type="text/javascript" th:inline="javascript">
    displayForms = function (link, formId) {
        // disable subsequent clicks
        link.onclick = function (event) {
            event.preventDefault();
        };
        document.getElementById(formId).style.display = "block";
    };
    $(document).ready(function () {
        updateReservationdetails=function(){

            var values={
                id:$("#updateId").val(),
                bookName:$("#updateName").val(),
                email:$("#updateEmail").val(),
                writer:$("#updateWriter").val(),
                userName:$("#updateUserName").val(),
                date:$("#updateDate").val(),
                validPeriod:$("#updatevalidPeriod").val()

            }
            console.log("stringified values"+JSON.stringify(values));
            values=JSON.stringify(values);
            var updateurl = "http://localhost:8081/LibraryManagement-0.0.1-SNAPSHOT/api/v1/updateReservation";
            $.ajax({
                headers:{
                    "Content-Type": "application/json",
                },
                type: "PUT",
                url: updateurl,
                data:values
            }).success(function(data){
                location.reload();
                // $("#searchBooksModal").modal('close');
                // $('#viewBooksModal').modal('show');
            }).done(function(){
                console.log("[AJAX] Complete: JSON WSDL Lookup");
            });


        }

        $("#addBtn").click(function () {
            $('#addBookModal').modal('show');
        });

        $("#addBtn1").click(function () {
            $('#addBookModal').modal('show');
        });

        $('#homeLink').click(function () {
            window.open('${pageContext.request.contextPath}/lmsdashboard', '_self', false);
        });

        var uemail = '${users.useremail}';
        console.log(uemail);
        var userid = '${users.id}';
        $("#loggedinusername").text(uemail);


        $("#logsBtn").click(function () {
            $('#centerpagecontent').empty();
            var url = "${pageContext.request.contextPath}/book/getAllLibUserBook";
            $.get(url, null, function (data) {
                console.log("" + JSON.stringify(data));
                var booksRecord = data;
                $('#centerpagecontent').append('<br><br><p style="text-align: center; font-weight: bold">Books added/updated by all librarians');
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
                $('#centerpagecontent').append(html);
            });
        });
        deleteBook=function(){
            var deleteURL = "http://localhost:8081/LibraryManagement-0.0.1-SNAPSHOT/api/v1/deleteReservation?id="+$("#updateId").val();
            $.ajax({
                headers:{
                    "Content-Type": "application/json",
                },
                type: "DELETE",
                url: deleteURL
            }).success(function(data){
                location.reload();
                // $("#searchBooksModal").modal('close');
                $('#viewBooksModal').modal('show');
            }).done(function(){
                console.log("[AJAX] Complete: JSON WSDL Lookup");
            });
        }

        $("#viewBooksBtn").click(function () {
            getBooksData();
            $('#viewBooksModal').modal('show');
        });
        $("#viewBooksBtn1").click(function () {
            getBooksData();
            $('#viewBooksModal').modal('show');
        });
        updateBook = function (rowId, reserveId, email, bookName, author, date, validPeriod, userName) {
            var html = '';
            html = html + '<br><div id="label">';
            // html = html + '<form class="form-group"  id="updatebookform"  method="post"  modelAttribute="book" action="http://localhost:8081/LibraryManagement_war/api/v1//updateBook">';
            html = html + '<tr id = ' + reserveId + '>';
            html = html + '<td id="td1"><input id="updateId" type="text" style="width: 35px"  name="reserveId" value=' + reserveId + '  readonly ></td>';
            html = html + '<td id="td2"><input id="updateEmail" type="txt" style="width: 120px" name="email" value=\"' + email + '\"' + ' readonly></td>';
            html = html + '<td id="td3"><input id="updateName" type="text" class="mytext" name="name" value=\"' + bookName + '\"' + '></td>';
            html = html + '<td id="td4"><input id="updateWriter" type="text" class="mytext" name="writer" value=\"' + author + '\"' + '></td>';
            html = html + '<td id="td5"><input id="updateDate" type="text" class="mytext" name="date" value=\"' + date + '\"' + '></td>';
            html = html + '<td id="td6"><input id="updatevalidPeriod" type="text" class="mytext" name="validPeriod" value=\"' + validPeriod + '\"' + '></td>';
            html = html + '<td id="td7"><input id="updateUserName" type="text" class="mytext" size="10" name="userName" value=\"' + userName + '\"' + '></td>';
            // html = html + '<td id="td8"><input id="updateCopies" type="number" min="0" class="mytext" name="num_of_copies" value=' + numberOfCopies + '></td>';
            // html = html + '<td id="td9"><input id="updateEdition" type="text" class="mytext" name="edition" value=\"' + edition + '\"' + '></td>';
            html = html + '<td>' + '<button  id=' + reserveId+ ' onClick="updateReservationdetails()"  class="btn btn-success" >Update</button><button class="btn btn-info" onclick="deleteBook()">Delete</button>' + '</td>';
            html = html + '</tr>';
            // html = html + '</form>';
            html = html + '</div>';
            const row = $('#' + rowId);
            row.replaceWith(html);
        };
        getBooksData = function () {
            var url = "http://localhost:8081/LibraryManagement-0.0.1-SNAPSHOT/api/v1/getReservations";
            $.ajax({
                type: "GET",
                url: "http://localhost:8081/LibraryManagement-0.0.1-SNAPSHOT/api/v1/getReservations",
            }).success(function(data){
                console.log("inside reservation data");
                console.log("data"+data);
                var mymodal = $('#viewBooksModal');
                mymodal.find('.modal-body').text('');
                // var jsonData = data;
                // let html = '<br><br><br><div class="table-responsive">' +
                //     '<table class="table">' +
                //     '<thead>' +
                //     '<tr>' +
                //     '<th>ID </th>' +
                //     '<th>Email </th>' +
                //     '<th>Book Name </th>' +
                //     '<th>Writer </th>' +
                //     '<th>Date </th>' +
                //     '<th>Valid Period </th>' +
                //     '<th>User Name </th>' +
                //     '<th align="center" >Actions</th>' +
                //     '</tr>';
                // for (i = 0; i < jsonData.length; i++) {
                //     //console.log("title string"+JSON.stringify(jsonData[i]));
                //     html = html + '<tr id = ' + jsonData[i].id + '>';
                //     html = html + '<td >' + jsonData[i].id + '</td>';
                //     html = html + '<td>' + jsonData[i].email + '</td>';
                //     html = html + '<td>' + jsonData[i].book.bookName + '</td>';
                //     html = html + '<td>' + jsonData[i].book.writer + '</td>';
                //     html = html + '<td>' + jsonData[i].date + '</td>';
                //     html = html + '<td>' + jsonData[i].validPeriod + '</td>';
                //     html = html + '<td>' + jsonData[i].userName + '</td>';
                //     var singleObj = jsonData[i];
                //     html = html + '<td>' + '  <button class="btn btn-info" id=' + jsonData[i].id + ' onClick="updateBook(\'' + jsonData[i].id + '\',\'' + jsonData[i].id + '\',\'' + jsonData[i].email + '\',\'' + jsonData[i].book.bookName + '\',\'' + jsonData[i].book.writer + '\',\'' + jsonData[i].date + '\',\'' + jsonData[i].validPeriod + '\',\'' + jsonData[i].userName +  '\')">Edit</button> ' + '</td>';
                //     html = html + '</tr>';
                // }
                // html = html + '</table>';
                // html = html + '</div>';
                // mymodal.find('.modal-body').append(html);
                var jsonData = data;
                var html = '<br><br><br><div class="table-responsive">' +
                    '<table class="table">' +
                    '<thead>' +
                    '<tr>' +
                    '<th>ID </th>' +
                    '<th>Email </th>' +
                    '<th>Book Name </th>' +
                    '<th>Writer </th>' +
                    '<th>Date </th>' +
                    '<th>Valid Period </th>' +
                    '<th>User Name </th>' +
                    '<th align="center" >Actions</th>' +
                    '</tr>';
                for (i = 0; i < jsonData.length; i++) {
                    //console.log("title string"+JSON.stringify(jsonData[i]));
                    html = html + '<tr id = ' + jsonData[i].id + '>';
                    html = html + '<td >' + jsonData[i].id + '</td>';
                    html = html + '<td>' + jsonData[i].email + '</td>';
                    html = html + '<td>' + jsonData[i].book.bookName + '</td>';
                    html = html + '<td>' + jsonData[i].book.writer + '</td>';
                    html = html + '<td>' + jsonData[i].date + '</td>';
                    html = html + '<td>' + jsonData[i].validPeriod + '</td>';
                    html = html + '<td>' + jsonData[i].userName + '</td>';

                    var singleObj = jsonData[i];
                    html = html + '<td>' + '  <button class="btn btn-info" id=' + jsonData[i].id + ' onClick="updateBook(\'' + jsonData[i].id + '\',\'' + jsonData[i].id + '\',\'' + jsonData[i].email + '\',\'' + jsonData[i].book.bookName + '\',\'' + jsonData[i].book.writer + '\',\'' + jsonData[i].date + '\',\'' + jsonData[i].validPeriod + '\',\'' + jsonData[i].userName + '\')">Edit</button> ' + '</td>';
                    html = html + '</tr>';
                }
                html = html + '</table>';
                html = html + '</div>';
                mymodal.find('.modal-body').append(html);
            }).done(function(){
                console.log("[AJAX] Complete: JSON WSDL Lookup");
            });

            // $.get(url, null, function (data) {
            //
            //     var jsondata = JSON.parse(data);
            //
            //     var mymodal = $('#viewBooksModal');
            //     mymodal.find('.modal-body').text('');
            //     var jsonData = data;
            //     let html = '<br><br><br><div class="table-responsive">' +
            //         '<table class="table">' +
            //         '<thead>' +
            //         '<tr>' +
            //         '<th>ID </th>' +
            //         '<th>Email </th>' +
            //         '<th>Book Name </th>' +
            //         '<th>Writer </th>' +
            //         '<th>Date </th>' +
            //         '<th>Valid Period </th>' +
            //         '<th>User Name </th>' +
            //         '<th align="center" >Actions</th>' +
            //         '</tr>';
            //     for (i = 0; i < jsonData.length; i++) {
            //         //console.log("title string"+JSON.stringify(jsonData[i]));
            //         html = html + '<tr id = ' + jsonData[i].id + '>';
            //         html = html + '<td >' + jsonData[i].id + '</td>';
            //         html = html + '<td>' + jsonData[i].email + '</td>';
            //         html = html + '<td>' + jsonData[i].book.bookName + '</td>';
            //         html = html + '<td>' + jsonData[i].book.writer + '</td>';
            //         html = html + '<td>' + jsonData[i].date + '</td>';
            //         html = html + '<td>' + jsonData[i].validPeriod + '</td>';
            //         html = html + '<td>' + jsonData[i].userName + '</td>';
            //         var singleObj = jsonData[i];
            //         html = html + '<td>' + '  <button class="btn btn-info" id=' + jsonData[i].id + ' onClick="updateBook(\'' + jsonData[i].id + '\',\'' + jsonData[i].id + '\',\'' + jsonData[i].email + '\',\'' + jsonData[i].book.bookName + '\',\'' + jsonData[i].book.writer + '\',\'' + jsonData[i].date + '\',\'' + jsonData[i].validPeriod + '\',\'' + jsonData[i].userName +  '\')">Edit</button> ' + '</td>';
            //         html = html + '</tr>';
            //     }
            //     html = html + '</table>';
            //     html = html + '</div>';
            //     mymodal.find('.modal-body').append(html);
            // });
        };
        $("#searchBtn").click(function () {
            $('#searchBooksModal').modal('show');
        });
        $("#searchBtn1").click(function () {
            $('#searchBooksModal').modal('show');
        });
        $("#search").click(function () {
            var url ="http://localhost:8081/LibraryManagement-0.0.1-SNAPSHOT/api/v1/getReservationByENW?name="+$("#searchName").val()+"&writer="+$('#searchWriter').val()+"&email="+$('#searchEmail').val();
            $.get(url, null, function (data) {
                var mymodal = $('#searchBooksModal');
                mymodal.find('.modal-body').text('');
                var jsonData = data;
                var html = '<br><br><br><div class="table-responsive">' +
                    '<table class="table">' +
                    '<thead>' +
                    '<tr>' +
                    '<th>ID </th>' +
                    '<th>Email </th>' +
                    '<th>Book Name </th>' +
                    '<th>Writer </th>' +
                    '<th>Date </th>' +
                    '<th>Valid Period </th>' +
                    '<th>User Name </th>' +
                    // '<th align="center" >Actions</th>' +
                    '</tr>';
                for (i = 0; i < jsonData.length; i++) {
                    //console.log("title string"+JSON.stringify(jsonData[i]));
                    html = html + '<tr id = ' + jsonData[i].id + '>';
                    html = html + '<td >' + jsonData[i].id + '</td>';
                    html = html + '<td>' + jsonData[i].email + '</td>';
                    html = html + '<td>' + jsonData[i].book.bookName + '</td>';
                    html = html + '<td>' + jsonData[i].book.writer + '</td>';
                    html = html + '<td>' + jsonData[i].date + '</td>';
                    html = html + '<td>' + jsonData[i].validPeriod + '</td>';
                    html = html + '<td>' + jsonData[i].userName + '</td>';

                    var singleObj = jsonData[i];
                    // html = html + '<td>' + '  <button class="btn btn-info" id=' + jsonData[i].id + ' onClick="updateBook(\'' + jsonData[i].id + '\',\'' + jsonData[i].id + '\',\'' + jsonData[i].email + '\',\'' + jsonData[i].book.bookName + '\',\'' + jsonData[i].book.writer + '\',\'' + jsonData[i].date + '\',\'' + jsonData[i].validPeriod + '\',\'' + jsonData[i].userName + '\')">Edit</button> ' + '</td>';
                    html = html + '</tr>';
                }
                html = html + '</table>';
                html = html + '</div>';
                mymodal.find('.modal-body').append(html);
                // location.reload();
                $("#searchBooksModal").modal('close');
                $('#viewBooksModal').modal('show');

            })
        });

        function clock_popup() {
            $('#datetimepicker').datetimepicker();
        }
    })
    addReservationDetails=function(){
        var values={
            bookName:$("#addname").val(),
            email:$("#addemail").val(),
            writer:$("#addwriter").val(),
            userName:$("#addusername").val(),
            date:$("#adddate").val(),
            validPeriod:$("#addvalidperiod").val()

        }
        console.log("stringified values"+JSON.stringify(values));
        values=JSON.stringify(values);
        var updateurl = "http://localhost:8081/LibraryManagement-0.0.1-SNAPSHOT/api/v1/reserveBook";
        $.ajax({
            headers:{
                "Content-Type": "application/json",
            },
            type: "POST",
            url: updateurl,
            data:values
        }).success(function(data){
            location.reload();
            // $("#searchBooksModal").modal('close');
            // $('#viewBooksModal').modal('show');
        }).done(function(){
            console.log("[AJAX] Complete: JSON WSDL Lookup");
        });
    }
    // $('#addbook').click(function () {
    //     var values={
    //         bookName:$("#addname").val(),
    //         isbn:$("#addisbn").val(),
    //         writer:$("#addwriter").val(),
    //         publisher:$("#addpublisher").val(),
    //         price:$("#addprice").val(),
    //         manufacturedYear:$("#addyear").val(),
    //         num_of_copies:$("#addcopies").val(),
    //         edition:$("#addedition").val()
    //
    //     }
    //     console.log("stringified values"+JSON.stringify(values));
    //     values=JSON.stringify(values);
    //     var updateurl = "http://localhost:8081/LibraryManagement-0.0.1-SNAPSHOT/api/v1/addBook";
    //     $.ajax({
    //         headers:{
    //             "Content-Type": "application/json",
    //         },
    //         type: "PUT",
    //         url: updateurl,
    //         data:values
    //     }).success(function(data){
    //         location.reload();
    //         // $("#searchBooksModal").modal('close');
    //         // $('#viewBooksModal').modal('show');
    //     }).done(function(){
    //         console.log("[AJAX] Complete: JSON WSDL Lookup");
    //     });
    // })

</script>
<body>
<h2 style="text-align: center">Welcome To Library Management System </h2>

<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <%--<a href="#"><strong><i class="glyphicon glyphicon-wrench"></i> Tools</strong></a>--%>

            <hr>


            <hr>

            <hr>

            <hr>
        </div>
        <div class="row">
            <!-- center left-->
            <div id="centerpagecontent" class="col-md-6">
                <div style="font-weight: bold; text-align: center; vertical-align: middle" class="well">
                    <i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;Manage Reservations
                </div>

                <hr>

                <!-- Modal for adding books-->
                <div class="modal fade" id="addBookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true" style="">
                    <div class="modal-dialog">
                        <div class="modal-content" id="addBookContent">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Add a new Reservation </h4>
                            </div>
                            <div class="modal-body">
                                <ul>
                                    <li>
                                        <input type="text" id="addemail"
                                               class="field-style field-full align-none" name="email"
                                               placeholder="E-Mail" required style="width: 100%">
                                    </li>
                                    <li>
                                        <input type="text" name="useName" size="10" id="addusername"
                                               class="field-style field-split align-left"
                                               placeholder="User Name" required style="width: 100%"/>
                                    </li>
                                    <li>
                                        <input type="text" name="bookName" size="10" id="addname"
                                               class="field-style field-split align-left"
                                               placeholder="Book Name" required style="width: 100%"/>
                                    </li>
                                    <li>
                                        <input type="text" name="writer" id="addwriter"
                                               class="field-style field-split align-right"
                                               placeholder="Author" required style="width: 100%"/>
                                    </li>
                                    <li>
                                        <input type="text" name="date" id="adddate"
                                               class="field-style field-split align-left"
                                               placeholder="Borrow Date" required style="width: 100%"/>
                                    </li>
                                    <li>
                                        <input type="text" name="validperiod" id="addvalidperiod"
                                               class="field-style field-split align-right"
                                               placeholder="Valid Date Period" required style="width: 100%"/>


                                    </li>


                                    <%--                                    <li>--%>
                                    <input  type="button" value="Add Book" onclick="addReservationDetails()" />
                                    <%--                                    </li>--%>
                                </ul>
                                <div id="my-tab-content" class="tab-content">
                                    <div class="tab-pane active" id="a">
                                        <form:form class="form-style-9" method="post"
                                                   action="${pageContext.request.contextPath}/book/addBook/"
                                                   modelAttribute="book" name="simpleaddform" id="simpleaddform"
                                                   style="display: none">
                                            <ul>
                                                <li>
                                                    <input type="text" id="isbn"
                                                           class="field-style field-full align-none" name="isbn"
                                                           placeholder="ISBN" required>
                                                </li>
                                                <li>
                                                    <input type="text" name="callnumber" size="10"
                                                           class="field-style field-split align-left"
                                                           placeholder="Call Number" required/>
                                                    <input type="text" name="location"
                                                           class="field-style field-split align-right"
                                                           placeholder="Location" required/>
                                                </li>
                                                <li>
                                                    <input type="number" min="1" name="num_of_copies"
                                                           class="field-style field-split align-left"
                                                           placeholder="# of copies" required/>
                                                    <input type="text" name="keywords"
                                                           class="field-style field-split align-right"
                                                           placeholder="Keywords" required/>
                                                    <select class="selectpicker" name="current_status"
                                                            data-style="btn-info" required>
                                                        <option>Available</option>
                                                        <option>Hold</option>
                                                        <option>Wait-Listed</option>
                                                    </select>

                                                </li>
                                                <li>
                                                    <input id="add" type="button" value="Add Book"/>
                                                </li>
                                            </ul>
                                        </form:form>
                                    </div>
                                </div>
                                <div class="tab-pane" id="b">

                                    <form:form class="form-style-9" method="post"
                                               action="${pageContext.request.contextPath}/book/addBook/"
                                               modelAttribute="book" id="advancedaddform" style="display: none">
                                        <ul>
                                            <li>
                                                <input type="text" class="field-style field-split align-left"
                                                       name="isbn" placeholder="ISBN" required>
                                                <input type="text" name="title"
                                                       class="field-style field-split align-right" placeholder="Title"
                                                       required/>
                                            </li>
                                            <li>
                                                <input type="text" name="author"
                                                       class="field-style field-split align-left" placeholder="Author"
                                                       required/>
                                                <input type="text" name="publisher"
                                                       class="field-style field-split align-right"
                                                       placeholder="Publisher" required/>
                                            </li>
                                            <li>
                                                <input type="text" name="year_of_publication"
                                                       class="field-style field-split align-left"
                                                       placeholder="Publication Year" required/>
                                                <input type="text" name="location"
                                                       class="field-style field-split align-left"
                                                       placeholder="Library Location" required/>
                                            </li>
                                            <li>
                                                <input type="number" min="1" name="num_of_copies"
                                                       class="field-style field-split align-left"
                                                       placeholder="# of Copies" required/>
                                                <input type="text" name="callnumber" size="10"
                                                       class="field-style field-split align-left"
                                                       placeholder="Call Number" required/>
                                            </li>
                                            <li>
                                                <select class="selectpicker" name="current_status"
                                                        data-style="btn-info" required>
                                                    <option>Available</option>
                                                    <option>Hold</option>
                                                    <option>Wait-Listed</option>
                                                </select>
                                                <input type="text" name="keywords"
                                                       class="field-style field-full align-none"
                                                       placeholder="Keywords" required/>
                                            </li>

                                            <li>
                                                <input type="submit" value="Add Book"/>
                                            </li>
                                        </ul>
                                    </form:form>
                                </div>
                                <%--</div>--%>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <%--<button type="button" class="btn btn-primary">Add Book </button>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: Modal for adding books-->

                <!-- Modal for viewing books -->
                <div class="modal fade" id="viewBooksModal" tabindex="-1" role="dialog"
                     aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content" id="viewBooksContent">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="viewbooksmodalid">List of all the Reservations in Library</h4>
                            </div>
                            <div class="modal-body">
                                <c:forEach var="book" items="${books}">
                                    <tr>
                                        <td>${book.isbn}</td>
                                        <td>${book.title}</td>
                                        <td>${book.author}</td>
                                        <td>${book.current_status}</td>
                                    </tr>
                                </c:forEach>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <%--<button type="button" class="btn btn-primary">Add Book </button>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: Modal for viewing books -->

                <div class="modal fade" id="searchBooksModal" tabindex="-1" role="dialog"
                     aria-labelledby="myModalLabel"
                     aria-hidden="true" style="width: 100%;height: 100%;left: 23%;margin-left: -23%;vertical-align: middle">
                    <div class="modal-dialog">
                        <div class="modal-content" id="searchBooksContent">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="searchbooksmodalid">Search Reservations</h4>
                            </div>
                            <div class="modal-body">
                                <form:form class="form-style-9" method="post"
                                           action="${pageContext.request.contextPath}/user/searchBook"
                                           modelAttribute="book" id="searchbooksform">
                                    <ul>
                                        <li>
                                            <input type="text" id="searchName" class="field-style field-split align-left"
                                                   name="searchName" placeholder="Book Name">
                                            <input type="text" name="searchWriter" id="searchWriter"
                                                   class="field-style field-split align-right" placeholder="Author "/>
                                        </li>
                                        <li>
                                            <input type="text" name="searchEmail" id="searchEmail" style="width:100%"
                                                   class="field-style field-split align-right" placeholder="Email "/>


                                        </li>
                                        <li>
                                            <input id="search" type="button" value="Search now"/>
                                        </li>
                                    </ul>
                                </form:form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="btn-group btn-group-justified">
                    <a id="addBtn" href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-plus"></i>
                        <br> Add
                    </a>
                    <a href="#" id="searchBtn" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-search"></i>
                        <br> Search
                    </a>
                    <%--<a href="#" class="btn btn-primary col-sm-3">--%>
                    <%--<i class="glyphicon glyphicon-remove"></i>--%>
                    <%--<br> Remove--%>
                    <%--</a>--%>
                    <a id="viewBooksBtn" href="#" class="btn btn-primary col-sm-3">
                        <i class="glyphicon glyphicon-list"></i>
                        <br> List
                    </a>
                </div>

                <hr>

                <div id="reportsdata" class="panel panel-default">
<%--                    <img src="../../webapp/resources/core/librarymanagement.png"/>--%>
                    <div class="panel-heading">
<%--                        <h4>Reports</h4></div>--%>
                    <img style="width: 800px;text-align:center" src="https://firebasestorage.googleapis.com/v0/b/chat-app-71bd1.appspot.com/o/librarymanagement.png?alt=media&token=f94d56fd-5acc-4b1c-b0a2-63161cf2f71f"/>
<%--                    <div class="panel-body">--%>

<%--                        <small>Available</small>--%>
<%--                        <div class="progress">--%>
<%--                            <div id="availablecount" class="progress-bar progress-bar-success" role="progressbar"--%>
<%--                                 aria-valuenow=${availablecount} aria-valuemin="0" aria-valuemax="100"--%>
<%--                                 style="width: 70%">--%>
<%--                                <span class="sr-only"></span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <small>Hold</small>--%>
<%--                        <div class="progress">--%>
<%--                            <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar"--%>
<%--                                 aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">--%>
<%--                                <span class="sr-only">20% Complete</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <small>WaitListed</small>--%>
<%--                        <div class="progress">--%>
<%--                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"--%>
<%--                                 aria-valuemin="0" aria-valuemax="100" style="width: 60%">--%>
<%--                                <span id="" class="sr-only">60% Complete (warning)</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <small>Failures</small>--%>
<%--                        <div class="progress">--%>
<%--                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80"--%>
<%--                                 aria-valuemin="0" aria-valuemax="100" style="width: 80%">--%>
<%--                                <span class="sr-only">80% Complete</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <!--/panel-body-->
                </div>
                <!--/panel-->
                <hr>
            </div>
            <!--/row-->

            <hr>

        </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<jsp:include page="footer.jsp"/>
</body>
</html>
