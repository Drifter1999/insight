<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>INSIGHT - 홈</title>
    <link rel="icon" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%--세션 저장 --%>
<c:set var="userSession" value="${userSession}" scope="session"/>
<!--================ Start Header Menu Area =================-->
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand logo_h" href="mainhome.jsp"><img src="img/insightlogo.JPG" alt="" /></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                        <c:choose>
                            <c:when test="${userSession eq null}">
                                <li class="nav-item submenu dropdown">
                                    <a  class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">상품</a>
                                </li>
                                <li class="nav-item active submenu dropdown">
                                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">로그인 / 회원가입</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a class="nav-link" href="index.jsp">로그인</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="register.jsp">회원가입</a>
                                        </li>
                                    </ul>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="nav-item">
                                    <a class="nav-link" href="mainhome.jsp">홈</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">상품</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0)" onclick="location.href='category.in'">카테고리</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item active submenu dropdown">
                                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${userSession.username} 님</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0)" onclick="location.href='mypage.jsp'">마이페이지</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0)" onclick="location.href='myshop.in?userid=${userSession.userid}'">나의 상점</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="javascript:void(0)" onclick="location.href='Logout.in'" style="color:red">로그아웃</a>
                                        </li>
                                    </ul>
                                </li>
                                </ul> <%-- 수정된 버튼 --%>
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="nav-item">
                                        <a class="button button-header" href="javascript:void(0)" onclick="location.href='productUpload.jsp'";>판매하기</a>
                                    </li>
                                </ul>
                            </c:otherwise>
                        </c:choose>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->
<main class="site-main">
    <!--================ 배너  Carousel start =================-->
    <section class="section-margin mt-0">
        <div class="owl-carousel owl-theme hero-carousel">
            <div class="hero-carousel__slide">
                <img src="img/home/hero-slide1.png" alt="" class="img-fluid">
                <a href="productdetail.jsp" class="hero-carousel__slideOverlay">
                    <h3>Wireless Headphone</h3>
                    <p>Accessories Item</p>
                </a>
            </div>
            <div class="hero-carousel__slide">
                <img src="img/home/hero-slide2.png" alt="" class="img-fluid">
                <a href="productdetail.jsp" class="hero-carousel__slideOverlay">
                    <h3>Wireless Headphone</h3>
                    <p>Accessories Item</p>
                </a>
            </div>
            <div class="hero-carousel__slide">
                <img src="img/home/hero-slide3.png" alt="" class="img-fluid">
                <a href="productdetail.jsp" class="hero-carousel__slideOverlay">
                    <h3>Wireless Headphone</h3>
                    <p>Accessories Item</p>
                </a>
            </div>
        </div>
    </section>
    <!--================ 배너  Carousel end =================-->

    <!-- ================ trending product section start ================= -->
    <!--제품이 카드로 되어있고 제품 수만큼 나와야하므로 js로 반복문 사용해야 함.-->
    <section class="section-margin calc-60px">
        <div class="container">
            <div class="section-intro pb-60px">
                <h2>등록된 <span class="section-intro__style">제품</span></h2>
                <br>
                <p>중고 제품이기에 사기를 조심해주세요</p>
            </div>
            <div class="row">
                <c:forEach var="product" items="${productlist}">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="card text-center card-product">
                            <div class="card-product__img">
                                <img class="card-img" src="${pageContext.request.contextPath}/productimage${product.productimage1}" alt="${product.productname}">
                                <ul class="card-product__imgOverlay">
                                    <li><button onclick="location.href='productdetail.in?productNum=${product.productnum}'"><i class="ti-search"></i></button></li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <c:set var="categoryName" value=""/>
                                <c:choose>
                                    <c:when test="${product.productcategorynum == 1}">
                                        <c:set var="categoryName" value="의류"/>
                                    </c:when>
                                    <c:when test="${product.productcategorynum == 2}">
                                        <c:set var="categoryName" value="잡화"/>
                                    </c:when>
                                    <c:when test="${product.productcategorynum == 3}">
                                        <c:set var="categoryName" value="전자기기"/>
                                    </c:when>
                                    <c:when test="${product.productcategorynum == 4}">
                                        <c:set var="categoryName" value="서적"/>
                                    </c:when>
                                    <c:when test="${product.productcategorynum == 5}">
                                        <c:set var="categoryName" value="악세서리"/>
                                    </c:when>
                                    <c:when test="${product.productcategorynum == 6}">
                                        <c:set var="categoryName" value="기타"/>
                                    </c:when>
                                </c:choose>

                                <p id="category">${categoryName}</p>
                                <h4 class="card-product__title"><a href="productdetail.in?productNum=${product.productnum}">${product.producttitle}</a></h4>
                                <p class="card-product__price">${product.productprice}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- ================ trending product section end ================= -->


    <!-- ================ offer section start ================= -->
    <section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="offer__content text-center">
                        <h2>이용해 주셔서 감사합니다</h2>
                        <h4>저희는 언제나 여러분들의 안전한 거래를 응원합니다.</h4>
                        <p>안전한 거래를 위해서 더 치트 사용 부탁드립니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ offer section end ================= -->
</main>
<!--================ Start footer Area  =================-->
<footer class="footer">
    <div class="footer-area">
        <div class="container">
            <div class="row section_gap">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title large_title">우리들이 할일</h4>
                        <p>
                            4월 12일이 발표이므로 그 떄 까지 중고거래 사이트를
                            완성시켜야함. 해당 사이트는 유저간 거래 중개 사이트이므로,
                            우리는 중고거래의 개입하지 않는다.
                        </p>
                        <p>
                            그러므로 거래 시 더 치트 같은 사이트를 이용하여서 사기를
                            미연에 방지하자.
                        </p>
                    </div>
                </div>
                <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title">조원 이름</h4>
                        <ul class="list">
                            <li><a href="https://github.com/rilac">임대연(조장님)</a></li>
                            <li><a href="https://github.com/m1nwook">김민욱</a></li>
                            <li><a href="https://github.com/GEONU-MOON">문건우</a></li>
                            <li><a href="https://github.com/shinjunsu">신준수</a></li>
                            <li><a href="https://github.com/Drifter1999">이상기</a></li>
                            <li><a href="https://github.com/taehalee615">이태하</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget instafeed">
                        <h4 class="footer_title">Gallery</h4>
                        <ul class="list instafeed d-flex flex-wrap">
                            <li><img src="img/gallery/r1.jpg" alt="" /></li>
                            <li><img src="img/gallery/r2.jpg" alt="" /></li>
                            <li><img src="img/gallery/r3.jpg" alt="" /></li>
                            <li><img src="img/gallery/r5.jpg" alt="" /></li>
                            <li><img src="img/gallery/r7.jpg" alt="" /></li>
                            <li><img src="img/gallery/r8.jpg" alt="" /></li>
                        </ul>
                    </div>
                </div>
                <!-- 이메일 주소가 길어서 이름이랑 이메일 주소가 한 줄에 표현이 안되는 것 같아서 따로 스타일 선언해서 제가 수정했습니다! 3/31 문건우 -->
                <div
                        class="offset-lg-1 col-lg-3 col-md-6 col-sm-6"
                        style="
                width: 100px;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
                padding-bottom: 0.14px;
              "
                >
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title">Contact Us</h4>
                        <div class="ml-40">
                            <p class="sm-head">
                                <span class="fa fa-phone"></span>
                                GitHub
                            </p>
                            <p>
                                임대연 : rilac<br />
                                김민욱 : m1nwook<br />
                                문건우 : GEONU-MOON<br />
                                신준수 : shinjunsu<br />
                                이상기 : Drifter1999<br />
                                이태하 : taehalee615
                            </p>

                            <p class="sm-head">
                                <span class="fa fa-envelope"></span>
                                이메일
                            </p>
                            <p>
                                임대연 : eodos6480@gmail.com<br />
                                김민욱 : supermin0317@naver.com<br />
                                문건우 : moondy2209@naver.com<br />
                                신준수 : sjs990306@gmail.com<br />
                                이상기 : yah9600@gmail.com<br />
                                이태하 : leeari0615@gmail.com
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row d-flex">
                <p class="col-lg-12 footer-text text-center">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                    All rights reserved | This template is made with
                    <i class="fa fa-heart" aria-hidden="true"></i> by
                    <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
            </div>
        </div>
    </div>
</footer>
<!--================ End footer Area  =================-->

<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="vendors/skrollr.min.js"></script>
<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="vendors/jquery.ajaxchimp.min.js"></script>
<script src="vendors/mail-script.js"></script>
<script src="js/main.js"></script>
</body>
</html>