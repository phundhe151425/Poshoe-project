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
        <h1>List of Categories</h1>
        <c:set var="ad" value="${sessionScope.account}"/>
        <h3 style="color: chocolate">Hello ${ad.name}!</h3>
        <h3>
            <form action="category" method="post">
                <input type="text" name="categoryName">
                <input type="submit" value="Save">
                
            </form>
            
        </h3>&nbsp;&nbsp;
        <!--<h3><a href="brand">Manage Brand</a></h3>&nbsp;&nbsp;-->
        <table border="1px" width="100%" style="margin-left: 10px; margin-right: 20px">
            <tr>
                <th>Category ID</th>
                <th>Category Name</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${requestScope.listCategory}" var="o">
                <tr style="text-align: left">
                    <td>${o.categoryID}</td>
                    <td>${o.categoryName}</td>
                    <td>
                        <!--<a href="check?action=update&productID=${o.categoryID}">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;-->
                        <a href="check?action=deletecategory&categoryID=${o.categoryID}" >Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <h3><a href="manage">Back</a></h3>

    </body>
</html>
<script>
    function doDeleteCategory(id){
        if(confirm("are U sure to delete category ID  = "+id+"?")){
            window.location="check?action=deletecategory&categoryID="+id;
        }
    }
</script>