<%-- 
    Document   : detail
    Created on : Feb 25, 2022, 7:51:58 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>


<style>
    .gallery-wrap .img-big-wrap img {
        height: 450px;
        width: auto;
        display: inline-block;
        cursor: zoom-in;
    }


    .gallery-wrap .img-small-wrap .item-gallery {
        width: 60px;
        height: 60px;
        border: 1px solid #ddd;
        margin: 7px 2px;
        display: inline-block;
        overflow: hidden;
    }

    .gallery-wrap .img-small-wrap {
        text-align: center;
    }
    .gallery-wrap .img-small-wrap img {
        max-width: 100%;
        max-height: 100%;
        object-fit: cover;
        border-radius: 4px;
        cursor: zoom-in;
    }
    .img-big-wrap img{
        width: 100% !important;
        height: auto !important;
    }
</style>

<div class="container">

    <div class="col-sm-9">
        <div class="container">
            <div class="card">
                <div class="row">
                    <form name="f" action="" method="post">
                    <c:set var="p" value="${requestScope.product}"></c:set>
                        <aside class="col-sm-5 border-right">
                            <article class="gallery-wrap"> 
                                <div class="img-big-wrap">
                                    <div> <a href="#"><img src="images/${p.imageURL}"></a></div>
                            </div> <!-- slider-product.// -->
                            <c:forEach items="${requestScope.listImage}" var="i">
                                <div class="img-small-wrap">
                                    <div class="item-gallery"> <img src="images/${i.imageURL}"></div>
                                    <!--                                    <div class="item-gallery"> <img src=""> </div>
                                                                        <div class="item-gallery"> <img src=""> </div>
                                                                        <div class="item-gallery"> <img src="}"> </div>-->
                                </div> <!-- slider-nav.// -->
                            </c:forEach>
                        </article> <!-- gallery-wrap .end// -->
                    </aside>
                    <aside class="col-sm-7">
                        <article class="card-body p-5">
                            <h3 class="title mb-3">${p.productName}</h3>

                            <p class="price-detail-wrap"> 
                                <span class="price h3 text-warning"> 
                                    <span class="currency"></span><span class="num"><fmt:formatNumber pattern="##,###,###,###.#" value="${(p.price)}"/> VND</span>
                                </span> 
                                <!--<span>/per kg</span>--> 
                            </p> <!-- price-detail-wrap .// -->
                            <dl class="item-property">
                                <dt>Description</dt>
                                <dd><p>${p.description}</p></dd>
                            </dl>
                            <hr>
                            <div class="row">
                                <div class="col-sm-5">
                                    <dl class="param param-inline">
                                        <dt>Quantity: </dt>
                                        <dd>
                                            <!--                                            <select class="form-control form-control-sm" style="width:70px;">
                                                                                            <option> 1 </option>
                                                                                            <option> 2 </option>
                                                                                            <option> 3 </option>
                                                                                        </select>-->
                                            <input style="text-align: center" type="number" value="1" name="num" id="num"/>
                                        </dd>
                                    </dl>  <!-- item-property .// -->
                                </div> <!-- col.// -->

                            </div> <!-- row.// -->
                            <hr>
                            <!--<a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a>-->
                            <!--<a href="#" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>-->
                            <input type="button" onclick="buy('${p.productID}')" value="Add to Cart" class="btn btn-info"/>
                        </article> <!-- card-body.// -->
                    </aside> <!-- col.// -->
                </div> <!-- row.// -->
                </form>
            </div> <!-- card.// -->
            

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
