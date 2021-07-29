<%--
  Created by IntelliJ IDEA.
  User: Akitoshi
  Date: 29-Jul-21
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Show Customers</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">


    <h2>Show Customer</h2>
    <a href="/customer?action=create" class="btn btn-success">Create</a>

    <form method="post" action="/customer?action=find">
    <input placeholder="nhập id" name="idFind">
        <button type="submit" class="btn btn-success">Find</button>
    </form>
    <br>
    <br>
    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listCustomer}" var="customer" varStatus="loop">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td><a href="/customer?action=edit&index=${loop.index}" class="btn btn-warning">Edit</a></td>
                <td><a href="/customer?action=delete&index=${loop.index}" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>
