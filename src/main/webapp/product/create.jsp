<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
    <style>
        .message{
            color: green;
        }
    </style>
</head>
<body>
    <h1>Create new Product</h1>
    <p>
        <c:if test='${requestScope["message"]!=null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/products">Back to product list</a>
    </p>
    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="productName" id="pName"></td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><input type="text" name="productPrice" id="pPrice"></td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td><input type="text" name="productDescription" id="pDescription"></td>
                </tr>
                <tr>
                    <td>Manufacturer: </td>
                    <td><input type="text" name="productManufacturer" id="pManufacturer"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Create product"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
