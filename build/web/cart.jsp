<%-- 
    Document   : cart
    Created on : Mar 8, 2022, 8:27:13 PM
    Author     : MSI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>


<div class="shopping-cart">
    <div class="px-4 px-lg-0">

        <div class="pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                        <!-- Shopping cart table -->
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Đơn Giá</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Số Lượng</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">Xóa</div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set value="${requestScope.cart}" var="c"/>
                                    <c:forEach items="${c.item}" var="o">
                                        <tr>
                                            <th scope="row">
                                                <div class="p-2">
                                                    <img src="images/${o.product.imageURL}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                    <div class="ml-3 d-inline-block align-middle">
                                                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.product.productName}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                    </div>
                                                </div>
                                            </th>
                                            <td class="align-middle">
                                                <strong>
                                                    <fmt:formatNumber pattern="##,###,###.##" value="${o.product.price}"/>
                                                </strong>
                                            </td>
                                            <td class="align-middle">
                                                <a href="process?num=-1&productID=${o.product.productID}"><button class="btn btn-secondary">-</button></a> 
                                                <strong>${o.quantity}</strong>
                                                <a href="process?num=1&productID=${o.product.productID}"><button class="btn btn-secondary">+</button></a>
                                            </td>
                                            <!--                                            <td class="align-middle"><a href="#" class="text-dark">
                                                                                                <button type="button" class="btn btn-danger">Delete</button>
                                                                                            </a>
                                                                                        </td>-->
                                            <td class="align-middle">
                                                <form action="process" method="post">
                                                    <input type="hidden" name="productID" value="${o.product.productID}"/>
                                                    <input type="submit" value="Delete"/>
                                                </form>
                                            </td>
                                        </tr> 
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- End -->
                    </div>
                </div>

                <div class="row py-5 p-4 bg-white rounded shadow-sm">
                    <div class="col-lg-6">
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                        <div class="p-4">
                            <div class="input-group mb-4 border rounded-pill p-2">
                                <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                <div class="input-group-append border-0">
                                    <button id="button-addon3" type="button" class="btn btn-secondary px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                        <div class="p-4">
                            <ul class="list-unstyled mb-4">
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                    <h5 class="font-weight-bold"><fmt:formatNumber pattern="##,###,###.#" value="${c.getTotalPrice()}"/> VND</h5>
                                </li>
                            </ul>
                                <form action="checkout" method="post"> 
                                <!--<a href="buy" class="btn btn-secondary rounded-pill py-2 btn-block">Mua Hàng</a>-->
                                <input type="submit" value="Mua Hàng" class="btn btn-secondary rounded-pill py-2 btn-block">
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
