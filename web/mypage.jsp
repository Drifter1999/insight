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
                <a class="navbar-brand logo_h" href="index.jsp"><img src="img/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <!-- 이 부분 마이페이지 눌렀을때 회원정보 보이게 -->
                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                        <li class="nav-item"><a class="nav-link" href="mainhome.jsp">홈</a></li>
                        <li class="nav-item active submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">샵</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="category.jsp">분류</a></li>
                                <li class="nav-item"><a class="nav-link" href="single-product.jsp">제품 정보</a></li>
                                <li class="nav-item"><a class="nav-link" href="checkout.jsp">구매하기</a></li>
                                <li class="nav-item"><a class="nav-link" href="confirmation.jsp">확인</a></li>
                                <li class="nav-item"><a class="nav-link" href="mypage.jsp">장바구니</a></li>
                            </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">블로그</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="blog.jsp">블로그</a></li>
                                <li class="nav-item"><a class="nav-link" href="register.jsp">가입하기</a></li>
                                <li class="nav-item"><a class="nav-link" href="single-blog.jsp">블로그 정보</a></li>
                            </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">페이지</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a class="nav-link" href="index.jsp">로그인</a></li>
                                <li class="nav-item"><a class="nav-link" href="tracking-order.jsp">배송조회</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="contact.jsp">고객센터</a></li>
                    </ul>

                    <!-- 장바구니 / 구매하기 버튼 삭제  -->
                    <ul class="nav-shop">
                        <li class="nav-item">
                            <button><i class="ti-search"></i></button>
                        </li>
                        <li class="nav-item">
                            <button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button>
                        </li>
                        <li class="nav-item"><a class="button button-header" href="#">구매하기</a></li>
                    </ul>

                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->

<!-- ================ start banner area ================= -->
<section class="blog-banner-area" id="category">
    <div class="container h-100">
        <div class="blog-banner">
            <!-- 여기 사진 넣거나 안내문구 -->
            <div class="text-center">
                <h1>환영합니다!</h1>
                <nav aria-label="breadcrumb" class="banner-breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">홈</a></li>
                        <li class="breadcrumb-item active" aria-current="page">안녕하세요 ~~~님</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>
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
<footer>
    <div class="footer-area footer-only">
        <div class="container">
            <div class="row section_gap">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets ">
                        <h4 class="footer_title large_title">우리 목표</h4>
                        <p>
                            개빠르게 배송하기
                        </p>
                        <p>
                            극한의 가성비
                        </p>
                    </div>
                </div>
                <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title">바로가기</h4>
                        <ul class="list">
                            <li><a href="#">홈</a></li>
                            <li><a href="#">샵</a></li>
                            <li><a href="#">블로그</a></li>
                            <li><a href="#">제품</a></li>
                            <li><a href="#">브랜드</a></li>
                            <li><a href="#">고객문의</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget instafeed">
                        <h4 class="footer_title">사진</h4>
                        <ul class="list instafeed d-flex flex-wrap">
                            <li><img src="img/gallery/r1.jpg" alt=""></li>
                            <li><img src="img/gallery/r2.jpg" alt=""></li>
                            <li><img src="img/gallery/r3.jpg" alt=""></li>
                            <li><img src="img/gallery/r5.jpg" alt=""></li>
                            <li><img src="img/gallery/r7.jpg" alt=""></li>
                            <li><img src="img/gallery/r8.jpg" alt=""></li>
                        </ul>
                    </div>
                </div>
                <div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title">고객문의</h4>
                        <div class="ml-40">
                            <p class="sm-head">
                                <span class="fa fa-location-arrow"></span>
                                사무실
                            </p>
                            <p>뉴욕시티다</p>

                            <p class="sm-head">
                                <span class="fa fa-phone"></span>
                                Phone Number
                            </p>
                            <p>
                                02-111-1111 <br>
                                010-1111-1111
                            </p>

                            <p class="sm-head">
                                <span class="fa fa-envelope"></span>
                                이메일
                            </p>
                            <p>
                                free@infoexample.com <br>
                                www.infoexample.com
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
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by
                    <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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