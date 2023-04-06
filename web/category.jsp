<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>INSIGHT - 카테고리 </title>
    <style>
        .sidebar-filter {
            display: none;
        }
        .sidebar-categories {
            position: sticky;
            top: 100px; /* 원하는 위치 값으로 수정 가능 */
            z-index: 1; /* 다른 요소 위에 위치시키기 위해 z-index 값을 지정해줍니다. */
        }
    </style>
    <link rel="icon" href="img/Fevicon.png" type="image/png" />
    <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css" />
    <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css" />
    <link rel="stylesheet" href="vendors/linericon/style.css" />
    <link
            rel="stylesheet"
            href="vendors/owl-carousel/owl.theme.default.min.css"
    />
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="vendors/nice-select/nice-select.css" />
    <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css" />

    <link rel="stylesheet" href="css/style.css" />
</head></head>
<body>
<%--세션 저장 --%>
<c:set var="userSession" value="${userSession}" scope="session"/>


<%--카테고리 전체 품목 저장--%>
<c:set var="AllProduct" value="${AllProduct}" scope="session"/>

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
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">홈</a>
                            </li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">상품</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="category.in">카테고리</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item active submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">로그인 / 회원가입</a>
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
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${userSession.username} 님</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0)" onclick="location.href='mypage.jsp'">마이페이지</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0)" onclick="location.href='MyShop.jsp'">나의 상점</a>
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

<%--  기존헤더 / CSS 안맞아서 일단 수정함 --%>
<%--<header class="header_area">--%>
<%--    <div class="main_menu">--%>
<%--        <nav class="navbar navbar-expand-lg navbar-light">--%>
<%--            <div class="container">--%>
<%--                <a class="navbar-brand logo_h" href="index.jsp"><img src="img/insightlogo.JPG" alt="" /></a>--%>
<%--                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                </button>--%>
<%--                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">--%>
<%--                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">--%>
<%--                        <c:choose>--%>
<%--                            <c:when test="${userSession eq null}">--%>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="index.jsp">홈</a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item submenu dropdown">--%>
<%--                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">상품</a>--%>
<%--                                    <ul class="dropdown-menu">--%>
<%--                                        <li class="nav-item">--%>
<%--                                            <a class="nav-link" href="category.jsp">카테고리</a>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item active submenu dropdown">--%>
<%--                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">로그인 / 회원가입</a>--%>
<%--                                    <ul class="dropdown-menu">--%>
<%--                                        <li class="nav-item">--%>
<%--                                            <a class="nav-link" href="index.jsp">로그인</a>--%>
<%--                                        </li>--%>
<%--                                        <li class="nav-item">--%>
<%--                                            <a class="nav-link" href="register.jsp">회원가입</a>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="mainhome.jsp">홈</a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item submenu dropdown">--%>
<%--                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">상품</a>--%>
<%--                                    <ul class="dropdown-menu">--%>
<%--                                        <li class="nav-item">--%>
<%--                                            <a class="nav-link" href="javascrip:void(0)" onclick="location.href='category.jsp'">카테고리</a>>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item active submenu dropdown">--%>
<%--                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${userSession.username} 님</a>--%>
<%--                                    <ul class="dropdown-menu">--%>
<%--                                        <li class="nav-item">--%>
<%--                                            <a class="nav-link" href="javascript:void(0)" onclick="location.href='mypage.jsp'">마이페이지</a>--%>
<%--                                        </li>--%>
<%--                                        <li class="nav-item">--%>
<%--                                            <a class="nav-link" href="#">구매신청</a>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </li>--%>
<%--                                <ul class="nav navbar-nav navbar-right">--%>
<%--                                    <li class="nav-item">--%>
<%--                                        <a class="button button-header" href="javascript:void(0)" onclick="location.href='productUpload.jsp'";>판매하기</a>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>

                                <%-- 기존 버튼
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="nav-item">
                                        <a class="nav-link" href="javascript:void(0)" onclick="location.href='productUpload.jsp'";>
                                            <button type="button" class="btn-custom">
                                                <i class="fa fa-plus"></i> 상품 등록하기
                                            </button>
                                        </a>
                                    </li>
                                </ul>
                                --%>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->

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


<!-- ================ category section start ================= -->
<section class="section-margin--small mb-5">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-4 col-md-5">
                <div class="sidebar-categories">
                    <!--   <div class="head">Browse Categories</div> -->
                    <div class="head">카테고리</div>
                    <ul class="main-categories">
                        <li class="common-filter">
                            <form action="#">
                                <ul>
                                    <!-- <li class="filter-list"><input class="pixel-radio" type="radio" id="men" name="brand"><label for="men">Men<span> (3600)</span></label></li> -->
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="Clothing" name="brand" value="Clothing"><label for="Clothing">의류</label></li>
                                    <!--   <li class="filter-list"><input class="pixel-radio" type="radio" id="women" name="brand"><label for="women">Women<span> (3600)</span></label></li>-->
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="Sundries" name="brand" value="Sundries"><label for="sundries">잡화</label></li>
                                    <!--  <li class="filter-list"><input class="pixel-radio" type="radio" id="accessories" name="brand"><label for="accessories">Accessories<span> (3600)</span></label></li> -->
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="ElectronicDevices" name="brand" value="ElectronicDevices"><label for="ElectronicDevices">전자기기</label></li>
                                    <!-- <li class="filter-list"><input class="pixel-radio" type="radio" id="footwear" name="brand"><label for="footwear">Footwear<span> (3600)</span></label></li>-->
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="Books" name="brand" value="Books"><label for="Books">서적</label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="Accessories" name="brand" value="Accessories"><label for="Accessories">악세서리</label></li>
                                    <!--   <li class="filter-list"><input class="pixel-radio" type="radio" id="electronics" name="brand"><label for="electronics">Electronics<span> (3600)</span></label></li>-->
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="Etc" name="brand" value="Etc"><label for="Etc">기타</label></li>
                                </ul>
                            </form>
                        </li>
                    </ul>
                </div>
                <div class="sidebar-filter">
                    <!--    <div class="top-filter-head">Product Filters</div>  아래 한글로 -->
                    <div class="top-filter-head">상세검색</div>
                    <div class="common-filter">
                        <div class="head">Brands</div>
                        <form action="#">
                            <ul>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
                            </ul>
                        </form>
                    </div>
                    <div class="common-filter">
                        <div class="head">Color</div>
                        <form action="#">
                            <ul>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black
                                    Leather<span>(29)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black
                                    with red<span>(19)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
                                <li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li>
                            </ul>
                        </form>
                    </div>
                    <div class="common-filter">
                        <div class="head">금액</div>
                        <div class="price-range-area">
                            <div id="price-range"></div>
                            <div class="value-wrapper d-flex">
                                <div class="price">금액:</div>
                                <span>$</span>
                                <div id="lower-value"></div>
                                <div class="to">~</div>
                                <span>$</span>
                                <div id="upper-value"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-8 col-md-7">
                <!-- Start Filter Bar -->
                <div class="filter-bar d-flex flex-wrap align-items-center">
                    <div class="sorting">
                        <select>
                            <!--  <option value="1">Default sorting</option> -->
                            <option value="1">기본정렬</option>
                            <!--    <option value="1">Default sorting</option> -->
                            <option value="1">인기순정렬</option>
                            <!--   <option value="1">Default sorting</option> -->
                            <option value="1">가격낮은순 </option>
                            <option value="1">가격높은순 </option>
                        </select>
                    </div>
                    <div class="sorting mr-auto">
                        <select>
                            <option value="1">Show 12</option>
                            <option value="1">Show 12</option>
                            <option value="1">Show 12</option>
                            <option value="1">Show 12</option>
                        </select>
                    </div>
                    <div>
                        <div class="input-group filter-bar-search">
                            <input type="text" placeholder="Search">
                            <div class="input-group-append">
                                <button type="button"><i class="ti-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Filter Bar -->
                <!-- Start Best Seller -->
                <section class="lattest-product-area pb-40 category-list">
                    <div class="row" id="CategoryList">
                        <c:forEach var="product" items="${AllProduct}">
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img">
                                        <img class="card-img" src="${'productimage'+product.productimage1}" alt="">
                                    </div>
                                    <div class="card-body">
                                        <p>${product.productname}</p>
                                        <h4 class="card-product__title"><a href="#">${product.producttitle}</a></h4>
                                        <p class="card-product__price">${product.productprice}</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <%--<div class="col-md-6 col-lg-4">
                            <div class="card text-center card-product">
                                <div class="card-product__img">
                                    <img class="card-img" src="img/product/product1.png" alt="">
                                    <ul class="card-product__imgOverlay">
                                        <li><button><i class="ti-search"></i></button></li>
                                        <li><button><i class="ti-shopping-cart"></i></button></li>
                                        <li><button><i class="ti-heart"></i></button></li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <p>Accessories</p>
                                    <h4 class="card-product__title"><a href="#">Quartz Belt Watch</a></h4>
                                    <p class="card-product__price">$150.00</p>
                                </div>
                            </div>
                        </div>
                        </div>--%>
                    </div>
                </section>
                <!-- End Best Seller -->
            </div>
        </div>
    </div>
</section>
<!-- ================ category section end ================= -->

<!-- ================ top product area start ================= -->
<%--<section class="related-product-area">--%>
<%--    <div class="container">--%>
<%--        <div class="section-intro pb-60px">--%>
<%--            <!--     <p>Popular Item in the market</p> -->--%>
<%--            <p> 인기품목리스트 </p>--%>
<%--            <h2>Top <span class="section-intro__style">Product</span></h2>--%>
<%--        </div>--%>
<%--        <div class="row mt-30">--%>
<%--            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">--%>
<%--                <div class="single-search-product-wrapper">--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">--%>
<%--                <div class="single-search-product-wrapper">--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-4.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-5.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-6.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">--%>
<%--                <div class="single-search-product-wrapper">--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-7.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-8.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-9.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">--%>
<%--                <div class="single-search-product-wrapper">--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="single-search-product d-flex">--%>
<%--                        <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>--%>
<%--                        <div class="desc">--%>
<%--                            <a href="#" class="title">Gray Coffee Cup</a>--%>
<%--                            <div class="price">$170.00</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<!-- ================ top product area end ================= -->

<!-- ================ Subscribe section start ================= -->
<!-- <section class="subscribe-position">    신제품 이메일로 보내주는 기능 안쓰기로해서 주석처리
   <div class="container">
     <div class="subscribe text-center">
       <h3 class="subscribe__title">Get Update From Anywhere</h3>
       <h3 class="subscribe__title"> 신제품 정보를 편하게 받고싶잖아 ?</h3>
      <p>Bearing Void gathering light light his eavening unto dont afraid</p>
       <p>그럼 입력해야지 이메일!</p>
       <div id="mc_embed_signup">
         <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">
           <div class="form-group ml-sm-auto">
             <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >
             <div class="info"></div>
           </div>
           <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>
           <div style="position: absolute; left: -5000px;">
             <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
           </div>

         </form>
       </div>

     </div>
   </div>
 </section> -->
<!-- ================ Subscribe section end ================= -->


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
                            <!-- <p class="sm-head">
                              <span class="fa fa-location-arrow"></span>
                              본사
                            </p>
                            <p>율도국 전우치로49 101</p> -->

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
<script src="vendors/nouislider/nouislider.min.js"></script>
<script src="vendors/jquery.ajaxchimp.min.js"></script>
<script src="vendors/mail-script.js"></script>
<script src="js/main.js"></script>
<script>
    $('input[name="brand"]').on('change', function() {

        let checkedValue = $('input[name="brand"]:checked').attr('value');
        let xhr = new XMLHttpRequest();
        let str = "";
        xhr.open("GET", "OneCategoryPrint.jsp?productcategoryname="+checkedValue, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
                let arr = JSON.parse(xhr.responseText);
                $('#CategoryList').children().remove();
                for (let i = 0 ; i < arr.length ; i++) {

                    /*console.log(arr[i].productname);*/
                    str = "<div class='col-md-6 col-lg-4'> " +
                        "<div class='card text-center card-product'>" +
                        "<div class='card-product__img'> " +
                            "<img class='card-img' src=productimage"+arr[i].productimage1+">" +
                        "</div>" +
                        "<div class='card-body'>" +
                            "<p>"+arr[i].productname+"</p>" +
                        "<h4 class='card-product__title'><a href='#'>"+arr[i].producttitle+"</a></h4>" +
                            "<p class='card-product__price'>" +
                        ""+arr[i].productprice+"원 <br> 수량 : " + arr[i].productquantity+" </p></div></div></div>";

                    $('#CategoryList').append(str);
                }
            }
        }
    });


</script>
</body>
</html>

