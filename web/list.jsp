<%-- 
    Document   : list
    Created on : Feb 25, 2022, 10:50:09 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<div class="row" style="width: 80%;">
    <c:forEach items="${requestScope.listProduct}" var="o">
        <div class="col-12 col-md-6 col-lg-4">
            <div class="card">
                <a href="detail?productID=${o.productID}"> <img class="card-img-top" src="images/${o.imageURL}" alt="Card image cap"></a>  
                <div class="card-body">
                    <h4 class="card-title show_txt"><a href="detail?productID=${o.productID}" title="View Product">${o.productName}</a></h4>
                    <p class="card-text show_txt">${o.description}</p>
                    <div class="row">
                        <div class="col">
                            <p class="btn btn-secondary">${o.price} VND</p>
                        </div>
                        <div class="col">
                            <a href="#" class="btn btn-info">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>