
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product list</title>
</head>
<body>
    <h1>Product</h1>
    <p>
      <a href="${pageContext.request.contextPath}/products?action=create">Create new product</a>
    </p>
    <table border="1">
        <tr>
            <td>Name</td>
            <td>Price</td>
            <td>Description</td>
            <td>Manufacturer</td>
            <td colspan="2">Action</td>
        </tr>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
              <td><a href="${pageContext.request.contextPath}/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
              <td>${product.getPrice()}</td>
              <td>${product.getDescription()}</td>
              <td>${product.getManufacturer()}</td>
              <td><a href="${pageContext.request.contextPath}/products?action=edit&id=${product.getId()}">Update</a></td>
              <td><a href="${pageContext.request.contextPath}/products?action=delete&id=${product.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
