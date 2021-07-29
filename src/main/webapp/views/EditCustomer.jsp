<%--
  Created by IntelliJ IDEA.
  User: Akitoshi
  Date: 29-Jul-21
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Table Edit Customer</h2>
    <form method="post">
        <table class="table">
            <tbody>
            <tr>
                <td><input placeholder="nhập id" name="id" value="${cus.id}"></td>
                <td><input placeholder="nhập tên" name="name" value="${cus.name}"></td>
                <td><input placeholder="nhập email" name="email" value="${cus.email}"></td>
                <td><input placeholder="nhập địa chỉ" name="address" value="${cus.address}"></td>
            </tr>

            </tbody>
        </table>
        <button type="submit" class="btn btn-success">Edit Customer</button>

    </form>
</div>

</body>
</html>
