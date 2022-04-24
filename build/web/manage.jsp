<%-- 
    Document   : manage
    Created on : Mar 1, 2022, 10:11:46 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Products</h1>
        <c:set var="ad" value="${sessionScope.account}"/>
        <h3 style="color: chocolate">Hello ${ad.name}!</h3>
        <h3><a href="check?action=add">Add New Product</a></h3>
        <h3><a href="brand">Manage Brand</a></h3>
        <h3><a href="category">Manage Category</a></h3>
        <h3><a href="statistic">View Statistic</a></h3>
        <table border="1px" width="100%" style="margin-left: 10px; margin-right: 20px">
            <tr>
                <th>Product ID</th>
                <th>Product name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Image</th>
                <!--<th>Description</th>-->
                <th>Category</th>
                <th>Brand</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.listProduct}" var="o">
                <tr style="text-align: left">
                    <td>${o.productID}</td>
                    <td>${o.productName}</td>
                    <td>${o.price}</td>
                    <td>${o.quantity}</td>
                    <td><img src="images/${o.imageURL}" width="100px" height="100px"/> </td>
                    <!--<td>${o.description}</td>-->
                    <td>${o.category.categoryName}</td>
                    <td>${o.brand.brandName}</td>
                    <td>${o.status.status}</td>
                    <td>
                        <a href="check?action=update&productID=${o.productID}">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="" onclick="doDelete('${o.productID}')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
<script>
    function doDelete(id){
        if(confirm("are U sure to delete product id = "+id+"?")){
            window.location="check?action=delete&productID="+id;
        }
    }
</script>