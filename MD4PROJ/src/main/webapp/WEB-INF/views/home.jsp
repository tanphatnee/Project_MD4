<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/14/2023
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Liquor Store</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="/css/animate.css">

    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">

    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

<div class="wrap" style="background-color: black">
    <div class="container">
        <div class="row">
            <div class="col-md-6 d-flex align-items-center">
                <p class="mb-0 phone pl-md-2">
                    <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +037 874 0576</a>
                    <a href="#"><span class="fa fa-paper-plane mr-1"></span> nvtphat2k4@gmail.com</a>
                </p>
            </div>
            <div class="col-md-6 d-flex justify-content-md-end">
                <div class="reg">
                    <c:if test="${userLogin==null}">
                        <p class="mb-0"><a href="<%=request.getContextPath()%>/userController/registerPage"
                                           class="mr-2">Sign Up</a> <a
                                href="<%=request.getContextPath()%>/userController/loginPage">Log In</a></p>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <c:if test="${userLogin!=null}">
            <a class="navbar-brand" href="<%=request.getContextPath()%>/homeController/getAll?userId=${userLogin.userId}">Liquor <span>store</span></a>
        </c:if>
        <c:if test="${userLogin==null}">
            <a class="navbar-brand" href="<%=request.getContextPath()%>/homeController/goHome">Liquor <span>store</span></a>
        </c:if>
        <div class="order-lg-last btn-group">
            <c:if test="${userLogin!=null}">
                <c:if test="${userLogin.userStatus==true}">
                    <a href="<%=request.getContextPath()%>/cartItemController/getAll?userId=${userLogin.userId}&message=''"
                       class="btn-cart dropdown-toggle dropdown-toggle-split">

                        <span class="flaticon-shopping-bag"></span>

                        <div class="d-flex justify-content-center align-items-center"><small
                                style="color: red">${count}</small></div>
                    </a></c:if>
            </c:if>
        </div>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <c:if test="${userLogin!=null}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">${userLogin.userName}</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/showOrderController/orderUser?userId=${userLogin.userId}">Orders</a>
                            <a class="dropdown-item" href="<%=request.getContextPath()%>/userController/logout">Log Out</a>
                        </div>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<div class="hero-wrap" style="background-image: url('/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-8 ftco-animate d-flex align-items-end">
                <div class="text w-100 text-center">
                    <h1 class="mb-4">Good <span>Drink</span> for Good <span>Moments</span>.</h1>
                    <p><a href="#" class="btn btn-primary py-2 px-4">Shop Now</a> <a href="#"
                                                                                     class="btn btn-white btn-outline-white py-2 px-4">Read
                        more</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-intro">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 d-flex">
                <div class="intro d-lg-flex w-100 ftco-animate">
                    <div class="icon">
                        <span class="flaticon-support"></span>
                    </div>
                    <div class="text">
                        <h2>Online Support 24/7</h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="intro color-1 d-lg-flex w-100 ftco-animate">
                    <div class="icon">
                        <span class="flaticon-cashback"></span>
                    </div>
                    <div class="text">
                        <h2>Money Back Guarantee</h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="intro color-2 d-lg-flex w-100 ftco-animate">
                    <div class="icon">
                        <span class="flaticon-free-delivery"></span>
                    </div>
                    <div class="text">
                        <h2>Free Shipping &amp; Return</h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pb">
    <div class="container">
        <div class="row">
            <div class="col-md-6 img img-3 d-flex justify-content-center align-items-center"
                 style="background-image: url(/images/about.jpg);">
            </div>
            <div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5">
                <div class="heading-section">
                    <span class="subheading">Since 1905</span>
                    <h2 class="mb-4">Desire Meets A New Taste</h2>

                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It
                        is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                    <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it
                        would have been rewritten a thousand times and everything that was left from its origin would be
                        the word "and" and the Little Blind Text should turn around and return to its own, safe
                        country.</p>
                    <p class="year">
                        <strong class="number" data-number="115">0</strong>
                        <span>Years of Experience In Business</span>
                    </p>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-no-pb">
    <div class="container">
        <div class="row">
            <c:forEach items="${listCatalog}" var="catalog">
                <div class="col-lg-2 col-md-4 ">
                    <div class="sort w-100 text-center ftco-animate">
                        <a href="<%=request.getContextPath()%>/productController/searchByCatalogId?catalogId=${catalog.catalogId}"><div
                                class="img" style="background-image: url(/upload/${catalog.image});"></div></a>
                        <h3>${catalog.catalogName}</h3>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center pb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Our Delightful offerings</span>
                <h2>Tastefully Yours</h2>
            </div>
        </div>
        <div class="row">

            <c:forEach items="${listProduct}" var="product">
                <div class="col-md-3 d-flex">
                    <div class="product ftco-animate">
                        <div class="img d-flex align-items-center justify-content-center"
                             style="background-image: url(/upload/${product.image});">
                            <div class="desc">
                                <p class="meta-prod d-flex">
                                    <c:if test="${userLogin!=null}">
                                        <c:if test="${userLogin.userStatus==true}">
                                            <a href="<%=request.getContextPath()%>/cartItemController/create?userId=${userLogin.userId}&productId=${product.productId}"
                                               class="d-flex align-items-center justify-content-center"><span
                                                    class="flaticon-shopping-bag"></span></a>
                                            <a href="<%=request.getContextPath()%>/productController/setHeart?productId=${product.productId}&userId=${userLogin.userId}" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
                                            <a href="<%=request.getContextPath()%>/productController/showDetail?productId=${product.productId}&userId=${userLogin.userId}" class="d-flex align-items-center justify-content-center"><span
                                                    class="flaticon-visibility"></span></a>
                                        </c:if>
                                    </c:if>

                                </p>
                            </div>
                        </div>
                        <div class="text text-center">
                            <span class="sale" style="background-color: white"><i style="font-size:24px;color:red" class="fa">&#xf004;</i><p style="color: #0b2e13">${product.heart}</p></span>

                            <c:forEach items="${listCatalog}" var="catalog">
                                <c:if test="${product.catalogId==catalog.catalogId}">
                                    <span class="category">${catalog.catalogName}</span>
                                </c:if>
                            </c:forEach>
                            <h2>${product.productName}</h2>
                            <p class="mb-0"> <span
                                    class="price">$${product.price}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="row justify-content-center">
            <c:if test="${userLogin!=null}">
                <div class="col-md-4">
                    <a href="<%=request.getContextPath()%>/productController/showListProduct?userId=${userLogin.userId}" class="btn btn-primary d-block">View All Products <span
                            class="fa fa-long-arrow-right"></span></a>
                </div>
            </c:if>
        </div>
    </div>
</section>

<section class="ftco-section testimony-section img" style="background-image: url(/images/bg_4.jpg);">
    <div class="overlay"></div>
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                <span class="subheading">Testimonial</span>
                <h2 class="mb-3">Happy Clients</h2>
            </div>
        </div>
        <div class="row ftco-animate">
            <div class="col-md-12">
                <div class="carousel-testimony owl-carousel ftco-owl">
                    <div class="item">
                        <div class="testimony-wrap py-4">
                            <div class="icon d-flex align-items-center justify-content-center"><span
                                    class="fa fa-quote-left"></div>
                            <div class="text">
                                <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia
                                    and Consonantia, there live the blind texts.</p>
                                <div class="d-flex align-items-center">
                                    <div class="user-img" style="background-image: url(/images/person_1.jpg)"></div>
                                    <div class="pl-3">
                                        <p class="name">Roger Scott</p>
                                        <span class="position">Marketing Manager</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap py-4">
                            <div class="icon d-flex align-items-center justify-content-center"><span
                                    class="fa fa-quote-left"></div>
                            <div class="text">
                                <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia
                                    and Consonantia, there live the blind texts.</p>
                                <div class="d-flex align-items-center">
                                    <div class="user-img" style="background-image: url(/images/person_2.jpg)"></div>
                                    <div class="pl-3">
                                        <p class="name">Roger Scott</p>
                                        <span class="position">Marketing Manager</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap py-4">
                            <div class="icon d-flex align-items-center justify-content-center"><span
                                    class="fa fa-quote-left"></div>
                            <div class="text">
                                <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia
                                    and Consonantia, there live the blind texts.</p>
                                <div class="d-flex align-items-center">
                                    <div class="user-img" style="background-image: url(/images/person_3.jpg)"></div>
                                    <div class="pl-3">
                                        <p class="name">Roger Scott</p>
                                        <span class="position">Marketing Manager</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap py-4">
                            <div class="icon d-flex align-items-center justify-content-center"><span
                                    class="fa fa-quote-left"></div>
                            <div class="text">
                                <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia
                                    and Consonantia, there live the blind texts.</p>
                                <div class="d-flex align-items-center">
                                    <div class="user-img" style="background-image: url(/images/person_1.jpg)"></div>
                                    <div class="pl-3">
                                        <p class="name">Roger Scott</p>
                                        <span class="position">Marketing Manager</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimony-wrap py-4">
                            <div class="icon d-flex align-items-center justify-content-center"><span
                                    class="fa fa-quote-left"></div>
                            <div class="text">
                                <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia
                                    and Consonantia, there live the blind texts.</p>
                                <div class="d-flex align-items-center">
                                    <div class="user-img" style="background-image: url(/images/person_2.jpg)"></div>
                                    <div class="pl-3">
                                        <p class="name">Roger Scott</p>
                                        <span class="position">Marketing Manager</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Blog</span>
                <h2>Recent Blog</h2>
            </div>
        </div>
        <div class="row d-flex">
            <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                <div class="blog-entry d-flex">
                    <a href="blog-single.html" class="block-20 img"
                       style="background-image: url(/images/image_1.jpg);">
                    </a>
                    <div class="text p-4 bg-light">
                        <div class="meta">
                            <p><span class="fa fa-calendar"></span> 23 April 2020</p>
                        </div>
                        <h3 class="heading mb-3"><a href="#">The Recipe from a Winemaker’s Restaurent</a></h3>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                        <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

                    </div>
                </div>
            </div>
            <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                <div class="blog-entry d-flex">
                    <a href="blog-single.html" class="block-20 img"
                       style="background-image: url(/images/image_2.jpg);">
                    </a>
                    <div class="text p-4 bg-light">
                        <div class="meta">
                            <p><span class="fa fa-calendar"></span> 23 April 2020</p>
                        </div>
                        <h3 class="heading mb-3"><a href="#">The Recipe from a Winemaker’s Restaurent</a></h3>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                        <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

                    </div>
                </div>
            </div>
            <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                <div class="blog-entry d-flex">
                    <a href="blog-single.html" class="block-20 img"
                       style="background-image: url('/images/image_3.jpg');">
                    </a>
                    <div class="text p-4 bg-light">
                        <div class="meta">
                            <p><span class="fa fa-calendar"></span> 23 April 2020</p>
                        </div>
                        <h3 class="heading mb-3"><a href="#">The Recipe from a Winemaker’s Restaurent</a></h3>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                        <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

                    </div>
                </div>
            </div>
            <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
                <div class="blog-entry d-flex">
                    <a href="blog-single.html" class="block-20 img"
                       style="background-image: url('/images/image_4.jpg');">
                    </a>
                    <div class="text p-4 bg-light">
                        <div class="meta">
                            <p><span class="fa fa-calendar"></span> 23 April 2020</p>
                        </div>
                        <h3 class="heading mb-3"><a href="#">The Recipe from a Winemaker’s Restaurent</a></h3>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                        <a href="#" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="ftco-footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2 logo"><a href="#">Liquor <span>Store</span></a></h2>
                    <p>Far far away, behind the word mountains, far from the countries.</p>
                    <ul class="ftco-footer-social list-unstyled mt-2">
                        <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <h2 class="ftco-heading-2">My Accounts</h2>
                    <ul class="list-unstyled">
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>My Account</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Register</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Log In</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>My Order</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <h2 class="ftco-heading-2">Information</h2>
                    <ul class="list-unstyled">
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About us</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Catalog</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact us</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Term &amp; Conditions</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Quick Link</h2>
                    <ul class="list-unstyled">
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>New User</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Help Center</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Report Spam</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Faq's</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Have a Questions?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon fa fa-map marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span>
                            </li>
                            <li><a href="#"><span class="icon fa fa-phone"></span><span
                                    class="text">+2 392 3929 210</span></a></li>
                            <li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid px-0 py-5 bg-black">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <p class="mb-0" style="color: rgba(255,255,255,.5);">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        All rights reserved | This template is made with <i class="fa fa-heart color-danger"
                                                                            aria-hidden="true"></i> by <a
                            href="https://colorlib.com" target="_blank">Colorlib.com</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </div>
</footer>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>


<script src="/js/jquery.min.js"></script>
<script src="/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/jquery.waypoints.min.js"></script>
<script src="/js/jquery.stellar.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/jquery.animateNumber.min.js"></script>
<script src="/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="/js/google-map.js"></script>
<script src="/js/main.js"></script>

</body>
</html>