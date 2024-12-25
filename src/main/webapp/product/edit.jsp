<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
    <h1>Update Product</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="${pageContext.request.contextPath}/products">Back to product list</a>
    </p>
    <form method="post">
        <fieldset>
            <legend>Product Information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td>
                        <input type="text" name="productName" id="pName"
                               value="${requestScope["product"].getName()}">
                    </td>

                </tr>
                <tr>
                    <td>Price: </td>
                    <td>
                        <input type="text" name="productPrice" id="pPrice"
                               value="${requestScope["product"].getPrice()}">
                    </td>
                </tr>

                <tr>
                    <td>Description: </td>
                    <td>
                        <input type="text" name="productDescription" id="pDescription"
                               value="${requestScope["product"].getDescription()}">
                    </td>
                </tr>

                <tr>
                    <td>Manufacturer</td>
                    <td>
                        <input type="text" name="productManufacturer" id="pManufacturer"
                               value="${requestScope["product"].getManufacturer()}">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Update product">
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
