<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aroma Shop - Cart</title>
    <!--	<link rel="icon" href="img/Fevicon.png" type="image/png">-->
    <!--  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">-->
    <!--  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">-->
    <!--	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">-->
    <!--	<link rel="stylesheet" href="vendors/linericon/style.css">-->
    <!--  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
      <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
      <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
      <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">-->

    <!--  <link rel="stylesheet" href="css/style.css">-->

    <link rel="stylesheet" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="vendors/linericon/style.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!--================ Start Header Menu Area =================-->
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand logo_h" href="index.jsp"
                ><img src="img/insightlogo.JPG" alt=""
                /></a>
                <button
                        class="navbar-toggler"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div
                        class="collapse navbar-collapse offset"
                        id="navbarSupportedContent"
                >
                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="mainhome.jsp">홈</a>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a
                                    href="#"
                                    class="nav-link dropdown-toggle"
                                    data-toggle="dropdown"
                                    role="button"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                            >상품</a
                            >
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="category.jsp">카테고리</a>
                                </li>
                                <!-- <li class="nav-item">
                                  <a class="nav-link" href="productdetail.jsp"
                                    >Blog Details</a
                                  >
                                </li> -->
                                <!-- <li class="nav-item"><a class="nav-link" href="checkout.jsp">Product Checkout</a></li>
                              <li class="nav-item"><a class="nav-link" href="confirmation.jsp">Confirmation</a></li>
                              <li class="nav-item"><a class="nav-link" href="mypage.jsp">Shopping Cart</a></li> -->
                            </ul>
                        </li>
                        <!-- <li class="nav-item submenu dropdown">
                          <a
                            href="#"
                            class="nav-link dropdown-toggle"
                            data-toggle="dropdown"
                            role="button"
                            aria-haspopup="true"
                            aria-expanded="false"
                            >Blog</a
                          >
                          <ul class="dropdown-menu">
                            <li class="nav-item">
                              <a class="nav-link" href="blog.jsp">Blog</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="single-blog.jsp"
                                >Blog Details</a
                              >
                            </li>
                          </ul>
                        </li> -->
                        <li class="nav-item active submenu dropdown">
                            <a
                                    href="#"
                                    class="nav-link dropdown-toggle"
                                    data-toggle="dropdown"
                                    role="button"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                            >로그인 / 회원가입</a
                            >
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">로그인</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="register.jsp">회원가입</a>
                                </li>
                                <!-- <li class="nav-item">
                                  <a class="nav-link" href="tracking-order.jsp"
                                    >Tracking</a
                                  >
                                </li> -->
                            </ul>
                        </li>
                        <!-- <li class="nav-item">
                          <a class="nav-link" href="contact.jsp">Contact</a>
                        </li>-->
                    </ul>

                    <%--          <ul class="nav-shop">--%>
                    <%--            <li class="nav-item">--%>
                    <%--              <button><i class="ti-search"></i></button>--%>
                    <%--            </li>--%>
                    <%--            <!-- <li class="nav-item">--%>
                    <%--              <button>--%>
                    <%--                <i class="ti-shopping-cart"></i--%>
                    <%--                ><span class="nav-shop__circle">3</span>--%>
                    <%--              </button>--%>
                    <%--            </li> -->--%>
                    <%--            <!-- <li class="nav-item">--%>
                    <%--              <a class="button button-header" href="#">Buy Now</a>--%>
                    <%--            </li> -->--%>
                    <%--          </ul>--%>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->

<!-- ================ start banner area ================= -->

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
<!-- ================ end banner area ================= -->


<!--================Cart Area =================-->
<!-- 이 부분에 마이페이지 정보들 나열-->
<section class="cart_area">
    <div class="container">
        <div class="cart_inner">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">상품</th>
                        <th scope="col">가격</th>
                        <th scope="col">수량</th>
                        <th scope="col">총액</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <div class="media">
                                <div class="d-flex">
                                    <img src="img/cart/cart1.png" alt="">
                                </div>
                                <div class="media-body">
                                    <p>상품명1</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <h5>10,000</h5>
                        </td>
                        <td>
                            <div class="product_count">
                                <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:"
                                       class="input-text qty">
                                <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                        class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i>
                                </button>
                                <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                        class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i>
                                </button>
                            </div>
                        </td>
                        <td>
                            <h5>10,000</h5>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="media">
                                <div class="d-flex">
                                    <img src="img/cart/cart2.png" alt="">
                                </div>
                                <div class="media-body">
                                    <p>상품명2</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <h5>10,000</h5>
                        </td>
                        <td>
                            <div class="product_count">
                                <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:"
                                       class="input-text qty">
                                <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                        class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i>
                                </button>
                                <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                        class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i>
                                </button>
                            </div>
                        </td>
                        <td>
                            <h5>10,000</h5>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="media">
                                <div class="d-flex">
                                    <img src="img/cart/cart3.png" alt="">
                                </div>
                                <div class="media-body">
                                    <p>상품명3</p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <h5>10,000</h5>
                        </td>
                        <td>
                            <div class="product_count">
                                <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:"
                                       class="input-text qty">
                                <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                        class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i>
                                </button>
                                <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                        class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i>
                                </button>
                            </div>
                        </td>
                        <td>
                            <h5>10,000</h5>
                        </td>
                    </tr>
                    <tr class="bottom_button">
                        <td>
                            <a class="button" href="#">장바구니 갱신</a>
                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                        <td>
                            <div class="cupon_text d-flex align-items-center">
                                <input type="text" placeholder="Coupon Code">
                                <a class="primary-btn" href="#">적용</a>
                                <a class="button" href="#">쿠폰이 있나요?</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>

                        </td>
                        <td>
                            <h5>총액</h5>
                        </td>
                        <td>
                            <h5>30,000</h5>
                        </td>
                    </tr>
                    <tr class="shipping_area">
                        <td class="d-none d-md-block">

                        </td>
                        <td>

                        </td>
                        <td>
                            <h5>배송방법</h5>
                        </td>
                        <td>
                            <div class="shipping_box">
                                <ul class="list">
                                    <li><a href="#">좀 느림: 3,000</a></li>
                                    <li><a href="#">무료배송</a></li>
                                    <li><a href="#">좀 더 느림: 2,000</a></li>
                                    <li class="active"><a href="#">기본배송비: 2,000</a></li>
                                </ul>
                                <h6>배송지 <i class="fa fa-caret-down" aria-hidden="true"></i></h6>
                                <select class="shipping_select">
                                    <option value="1">한국</option>
                                    <option value="2">일본</option>
                                    <option value="4">중국</option>
                                </select>
                                <select class="shipping_select">
                                    <option value="1">서울특별시</option>
                                    <option value="2">대전광역시</option>
                                    <option value="4">대구광역시</option>
                                </select>
                                <input type="text" placeholder="우편번호">
                                <a class="gray_btn" href="#">상세주소</a>
                            </div>
                        </td>
                    </tr>
                    <tr class="out_button_area">
                        <td class="d-none-l">

                        </td>
                        <td class="">

                        </td>
                        <td>

                        </td>
                        <td>
                            <div class="checkout_btn_inner d-flex align-items-center">
                                <a class="gray_btn" href="#">이어서 쇼핑하기</a>
                                <a class="primary-btn ml-2" href="#">결제하기</a>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<!--================End Cart Area =================-->


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
<script src="vendors/jquery.ajaxchimp.min.js"></script>
<script src="vendors/mail-script.js"></script>
<script src="js/main.js"></script>
</body>
</html>