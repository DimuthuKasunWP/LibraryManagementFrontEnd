<%--
  Created by IntelliJ IDEA.
  User: kasun
  Date: 7/24/2020
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View Book</title>
</head>
<body>
Book Details:
<br>
<table>
    <tr>
        <td>ISBN</td>
        <td>${book.isbn}</td>
    </tr>
    <tr>
        <td>Author</td>
        <td>${book.writer}</td>
    </tr>
    <tr>
        <td>Title</td>
        <td>${book.title}</td>
    </tr>
    <tr>
        <td>Call Number</td>
        <td>${book.price}</td>
    </tr>
    <tr>
        <td>Publisher</td>
        <td>${book.publisher}</td>
    </tr>
    <tr>
        <td>Year of Publication</td>
        <td>${book.year_of_publication}</td>
    </tr>
    <tr>
        <td>Location</td>
        <td>${book.edition}</td>
    </tr>
    <tr>
        <td>Number of copies</td>
        <td>${book.num_of_copies}</td>
    </tr>

</table>
<br>
</body>
</html>
