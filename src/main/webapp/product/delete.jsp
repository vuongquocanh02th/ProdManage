<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting Product</title>
</head>
<body>
    <h1>Delete Product</h1>
    <p>
        <a href="${pageContext.request.contextPath}/products">Back to product list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
            <legend>Product Information</legend>
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
                <tr>
                    <td><input type="submit" value="Delete product"></td>
                    <td><a href="${pageContext.request.contextPath}/products">Back to product list</a></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
