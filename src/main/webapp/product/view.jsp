<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
    <h1>Product Details</h1>
    <p>
        <a href="/products">Back to product list</a>
    </p>
    <table>
        <tr>
            <td>Name: </td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Price: </td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Description: </td>
            <td>${requestScope["product"].getDescription()}</td>
        </tr>
        <tr>
            <td>Manufacturer: </td>
            <td>${requestScope["product"].getManufacturer()}</td>
        </tr>
    </table>
</body>
</html>
