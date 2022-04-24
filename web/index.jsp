<%-- 
    Document   : index
    Created on : Feb 26, 2022, 10:53:42 AM
    Author     : MSI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            @use postcss-preset-env {
                stage: 0;
            }

            /* helpers/accessibility.css */

            .invisible {
                left: -999px;
                overflow: hidden;
                position: absolute;
                top: -999px;
            }

            /* helpers/align.css */

            .align {
                display: grid;
                place-items: center;
            }

            /* layout/base.css */

            :root {
                --body-background-color: #fdbabb;
                --body-color: #97adc6;
            }

            body {
                background-color:#fdbabb;
                color: black);
                margin: 0;
                min-block-size: 100vh;
            }

            /* modules/anchor.css */

            a {
                color: inherit;
                outline: 0;
            }

            /* modules/icon.css */

            .icons {
                display: none;
            }

            .icon {
                block-size: 1em;
                display: inline-block;
                fill: currentcolor;
                inline-size: 1em;
                vertical-align: middle;
            }

            .icon--2x {
                font-size: 2rem;
            }

            /* modules/image.css */

            svg {
                max-inline-size: 100%;
            }

            /* modules/navigation.css */

            :root {
                --navigation-background-color: #f0f6ff;
                --navigation-border-radius: 0.25em;

                --navigation-anchor-padding: 1.5em;
            }

            .navigation {
                background-color: #fdbabb;
                border-radius: 10px;
                box-shadow: 0 0.5em 1em rgba(0, 0, 0, 0.3);
            }

            .navigation ul {
                list-style: none;
                margin: 0;
                padding-left: 50px;
            }

            .navigation a {
                display: block;
                padding: 30px;
                position: relative;
                text-decoration: none;
            }

            .navigation a:focus::after,
            .navigation a:hover::after {
                opacity: 1;
            }

            .navigation a::after {
                block-size: auto;
                /*box-shadow: 0 0.5em 1em rgba(0, 0, 0, 0.3);*/
                content: '';
                inline-size: 100%;
                left: 0;
                opacity: 0;
                position: absolute;
                top: 0;
                transition: opacity 0.3s;
            }

            .navigation--inline ul {
                display: flex;
            }

        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Po Shoes</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/detail.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>

        <header class="p-3 text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
                    </a>

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="home" class="nav-link px-2 text-info"><h3>Po Shoes</h3></a></li>
                        <li><a href="home" class="nav-link px-2 text-black"><h3>Home</h3></a></li>
                        <li><a href="list" class="nav-link px-2 text-black"><h3>Product</h3></a></li>
                            <c:if test="${account.roleID==2}">
                            <li><a class="btn btn-success btn-sm ml-3" href="show">
                                    <i class="fa fa-shopping-cart"></i> Cart
                                    <span class="badge badge-light">${requestScope.size}</span>
                                </a></li>
                            </c:if>
                            <c:if test="${account.roleID==1}">
                                <li><a href="manage" class="nav-link px-2 text-black"><h3 style="color: blue">Manage Product</h3></a></li>
                            </c:if>
                    </ul>

                    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" action="home" method="post">
                        <input class="form-control mr-sm-2" name="key" type="text" placeholder="Search" aria-label="Search...." value="${param.key}">
                        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                    </form>

                    <div class="text-end">
                        <c:if test="${sessionScope.account==null}">
                            <button type="button" class="btn btn-info me-2"><a href="login">Login</a></button>
                        </c:if>
                        <c:if test="${account!=null}">
                            <h3 style="color: while">
                                ${account.name}
                            </h3>
                        </c:if>   
                        <c:if test="${sessionScope.account!=null}">
                            <button type="button" class="btn btn-warning"><a class="nav-link" href="logout">Logout</a></button>
                        </c:if>

                    </div>
                </div>
            </div>
        </header>

        <c:if test="${requestScope.pageInclude!=null}">
            <jsp:include page="${requestScope.pageInclude}"></jsp:include>
        </c:if>            

        <!-- Footer -->
        <footer class="text-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-lg-4 col-xl-3">
                        <h5>Po Shoes</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p class="mb-0">

                        </p>
                    </div>

                    <!--                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                                            <h5>Informations</h5>
                                            <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                                            <ul class="list-unstyled">
                                                <li><a href="">Link 1</a></li>
                                                <li><a href="">Link 2</a></li>
                                                <li><a href="">Link 3</a></li>
                                                <li><a href="">Link 4</a></li>
                                            </ul>
                                        </div>-->

                    <div class="col-md-5 col-lg-2 col-xl-2 mx-auto">
                        <h5>Address</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li>Hà nội</li>
                            <li>Hồ Chí Minh</li>
                            <li>Đà Nẵng</li>
                            <li>Nam Định</li>
                        </ul>
                    </div>

                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h5>Contact</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><img src="images/fb-icon.png" alt=""/>Po Shoes</li>
                            <li><img src="images/email-icon.png" alt=""/>phundhe151425@fpt.edu.vn</li>

                            <li><img src="images/phone-icon.png" alt=""/> 0123456789</li>
                            <li><img src="images/phone-icon.png" alt=""/> 9876543210</li>
                        </ul>
                    </div>
                    <div class="col-12 copyright mt-3">
                        <p class="float-left">
                            <a href="#">Back to top</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
