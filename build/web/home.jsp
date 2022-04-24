<%-- 
    Document   : home1
    Created on : Feb 24, 2022, 9:54:37 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<div class="container" style="margin-top: 30px">

    <div class="row">
        <div class="col-sm-3">
            <div class="card bg-light mb-3">
                <c:set value="${requestScope.newProduct}" var="p"/>
                <div class="card-header bg-info text-white text-uppercase">New product</div>
                <div class="card-body">
                    <a href="detail?productID=${p.productID}"><img class="img-fluid" src="images/${p.imageURL}" /><a/>
                    <h5 class="card-title">${p.productName}</h5>
                    <p class="card-text">${p.description}</p>
                    <p class="bloc_left_price"><fmt:formatNumber pattern="##,###,###,###.#" value="${(p.price)}"/> VND</p>
                </div>
            </div>
            <div class="card bg-light mb-3">
                <div class="card-header bg-info text-white text-uppercase" style="text-align: center"> Categories</div>
                <ul class="list-group category_block">
                    <c:set var="categoryID" value="${requestScope.categoryID}"/>
                    <c:set var="k" value="${requestScope.key}"/>
                    <c:forEach items="${listCategory}" var="o">
                        <li class="list-group-item list-group-item-primary text-white ">
                            <a class="<c:if test="${categoryID==o.categoryID}">active</c:if>" href="home?categoryID=${o.categoryID}">${o.categoryName}</a>
                            </li>
                    </c:forEach>

                </ul>
            </div>
            <div class="card bg-light mb-3">
                <div class="card-header bg-info text-white text-uppercase" style="text-align: center">Brand</div>
                <ul class="list-group brand_block" >
                    <%--<c:set var="brandID" value="${requestScope.brandID}"/>--%>
                    <c:forEach items="${listBrand}" var="o">
                        <li  class="list-group-item text-white" >
                            <a class="<c:if test="${brandID==o.brandID}">active</c:if>" href="home?brandID=${o.brandID}">${o.brandName}</a>
                            </li>
                    </c:forEach>

                </ul>
            </div>
            <form action="checkbox">
                <c:forEach begin="0" end="${listCategory.size()-1}" var="o">
                    <input type="checkbox" name="categoryID" value="${listCategory.get(o).getCategoryID()}"
                           ${categoryIDs[o]?"checked":""} onclick="this.form.submit()"/> ${listCategory.get(o).getCategoryName()}
                    <br/>

                </c:forEach>
            </form>

        </div>

        <div class="col-sm-9">
            <c:set var="page" value="${requestScope.page}"></c:set>
            
                <div class="pagination">
                <c:forEach begin="${1}" end="${requestScope.numPage}" var="i">
                    <a class="<c:if test="${i==page}">active</c:if>" href="home?page=${i}&key=${key}">${i}</a>
                </c:forEach>
            </div>
            <div class="pagination">
                <a class="" href="home?sort=${1}">sort price increasing</a>
                <a class="" href="home?sort=${2}">sort price decreasing</a>
            </div>

            <div class="row">
                <form name="f" action="" method="post">
                    <c:forEach items="${requestScope.listPageProduct}" var="o">
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card">
                                <input style="text-align: center" type="hidden" value="1" name="num" id="num"/>
                                <a href="detail?productID=${o.productID}"> <img class="card-img-top" src="images/${o.imageURL}" alt="Card image cap"></a>  
                                <div class="card-body">
                                    <h4 class="card-title show_txt"><a href="detail?productID=${o.productID}" title="View Product">${o.productName}</a></h4>
                                    <p class="card-text show_txt">${o.description}</p>
                                    <div class="row">
                                        <div class="col">
                                            <p class="btn btn-secondary">
                                                <fmt:formatNumber pattern="##,###,###,###.#" value="${(o.price)}"/> VND
                                            </p>
                                        </div>
                                        <div class="col">
                                            <!--<a onclick="buy('${o.productID}')" href="buy?productID=${o.productID}" class="btn btn-info">Add to cart</a>-->
                                            <input type="button" onclick="buy('${o.productID}')" value="Add to Cart" class="btn btn-info"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </form> 
            </div>
            <c:set var="page" value="${requestScope.page}"></c:set>
                <div class="pagination">
                <c:forEach begin="${1}" end="${requestScope.numPage}" var="i">
                    <a class="<c:if test="${i==page}">active</c:if>" href="home?page=${i}&key=${k}">${i}</a>
                </c:forEach>
            </div>   

        </div>

    </div>
</div>
<script type="text/javascript">
    function buy(productID) {
        var q = document.getElementById("num").value;
        document.f.action = "buy?productID=" + productID + "&num=" + q;
        document.f.submit();
    }
</script>



