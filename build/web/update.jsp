<%-- 
    Document   : add
    Created on : Mar 1, 2022, 10:58:35 PM
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
        <h1>Edit a Product</h1>
        <c:set value="${requestScope.product}" var="p"></c:set>
            <form action="update" method="post">
                <table>
                    <tr>
                        <td>Product ID: </td>
                        <td><input type="text" name="productID" value="${p.productID}" readonly="" /></td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="productName" value="${p.productName}" /></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" value="${p.price}" /></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="text" name="quantity" value="${p.quantity}" /></td>
                </tr>
                <tr>
                    <td>image URL</td>
                    <td><input type="text" name="imageURL" value="images/${p.imageURL}" /></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" name="description" value="${p.description}" /></td>
                </tr>
                <tr>
                    <td>
                        <select name="categoryID">
                            <option value="0">Choose a category</option>
                            <c:forEach items="${requestScope.listCategory}" var="o">
                                <option value="${o.categoryID}"> ${o.categoryName}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <select name="brandID">
                            <option value="0">Choose a brand</option>
                            <c:forEach items="${requestScope.listBrand}" var="o">
                                <option value="${o.brandID}"> ${o.brandName}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <select name="statusID">
                            <option value="1">Còn Hàng</option>
                            <option value="2">Hết Hàng</option>
                        </select>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td><input type="submit" name="" value="Save" /></td>
                    <td></td>
                </tr>


            </table>
        </form>

    </body>
</html>
