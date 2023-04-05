<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aroma Shop - Product Details</title>
    <link rel="icon" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="vendors/linericon/style.css">
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
                <a class="navbar-brand logo_h" href="index.jsp"><img src="img/insightlogo.JPG" alt="" /></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <c:choose>
                        <c:when test="${userSession eq null}">
                        <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="mainhome.jsp">홈</a>
                            </li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">상품</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="category.jsp">카테고리</a>
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
                        </ul>
                        </c:when>
                        <c:otherwise>
                        <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="mainhome.jsp">홈</a>
                            </li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">상품</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="javascript:void(0)" onclick="location.href='category.jsp'">카테고리</a>
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
                        </ul>
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


<!--================Single Product Area =================-->
<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="owl-carousel owl-theme s_Product_carousel">
                    <div class="single-prd-item">
                        <img class="img-fluid" src="img/category/s-p1.jpg" alt="">
                    </div>
                    <!-- <div class="single-prd-item">
                        <img class="img-fluid" src="img/category/s-p1.jpg" alt="">
                    </div>
                    <div class="single-prd-item">
                        <img class="img-fluid" src="img/category/s-p1.jpg" alt="">
                    </div> -->
                    <!-- 이미지 추가해서 여러장 넘겨보는 기능 추가 -->
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <h3> 제품 이름! </h3>
                    <h2> 제품 가격 ! 30,000원</h2>
                    <ul class="list">
                        <li><a class="active" href="#"><span>품목</span> : 시계</a></li>
                    </ul>
                    <p>
                        작년 하와이 갔다가 국내로 돌아올 때 산 샤넬 시계입니다 잘 사용해서
                        깨끗합니다 네고 가능!
                    </p>
                    <div class="product_count">

<%--                        <label for="qty">수량선택 :</label--%>
                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                class="increase items-count" type="button"><i class="ti-angle-left"></i></button>
                        <input type="text" name="qty" id="sst" size="2" maxlength="12" value="1" title="Quantity:" class="input-text qty">
                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                class="reduced items-count" type="button"><i class="ti-angle-right"></i></button>
                        <a class="button primary-btn" href="#">대화 요청 기능으로 수정해야 함</a>
                    </div>
                    <div class="card_area d-flex align-items-center">
                        <a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
                        <!-- 찜기능을 사용할 것인가? 살리냐 죽이냐 추후에 마이페이지에 연동해서 추가할지도?-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--================End Single Product Area =================-->

<!--================Product Description Area =================-->
<section class="product_description_area">
    <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">상세 설명</a>
            </li>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"--%>
<%--                   aria-selected="false">상품 상세설명</a>--%>
<%--            </li>--%>

<%--            <li class="nav-item">--%>
<%--                <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"--%>
<%--                   aria-selected="false">댓글</a>--%>
<%--            </li>--%>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                <p>블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
                    블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
                    블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
                    블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라
                    블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라

                </p>
                <p>It is often frustrating to attempt to plan meals that are designed for one. Despite this fact, we are seeing
                    more and more recipe books and Internet websites that are dedicated to the act of cooking for one. Divorce and
                    the death of spouses or grown children leaving for college are all reasons that someone accustomed to cooking for
                    more than one would suddenly need to learn how to adjust all the cooking practices utilized before into a
                    streamlined plan of cooking that is more efficient for one person creating less</p>
            </div>

            <!-- 쓸지안쓸지 몰라서 일단 주석-->

<%--            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">--%>
<%--                <div class="table-responsive">--%>
<%--                    <table class="table">--%>
<%--                        <tbody>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>넓이</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>128mm</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>높이</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>508mm</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>깊이</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>85mm</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>무게</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>52gm</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>상태</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>A급</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>사용 기간</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>03days</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>패키지 포함</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>불 포함</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <h5>직거래 계좌이체 거래</h5>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <h5>거래 가능</h5>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        </tbody>--%>
<%--                    </table>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!-- 쓸지안쓸지모르는 끝-->


            <!-- <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="comment_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-1.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item reply">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-2.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-3.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Post a comment</h4>
                            <form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Your Full name">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="number" name="number" placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" id="message" rows="1" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button type="submit" value="submit" class="btn primary-btn">Submit Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- 컨택트탭에서 살릴게 있으면 살림  리뷰탭이랑 둘중 하나를 골라서 사용해야 할듯-->


            <!-- 쓸지안쓸지모르는 댓글 -->
<%--            <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-6">--%>
<%--                        <div class="row total_rate">--%>
<%--                            <div class="col-6">--%>
<%--                                <div class="box_total">--%>
<%--                                    <h5>평균? </h5>--%>
<%--                                    <h4>4.0</h4>--%>

<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-6">--%>
<%--                                <div class="rating_list">--%>
<%--                                    <h3>리뷰 평점</h3>--%>
<%--                                    <ul class="list">--%>
<%--                                        <li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i--%>
<%--                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>--%>
<%--                                        <li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i--%>
<%--                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>--%>
<%--                                        <li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i--%>
<%--                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>--%>
<%--                                        <li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i--%>
<%--                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>--%>
<%--                                        <li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i--%>
<%--                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="review_list">--%>
<%--                            <div class="review_item">--%>
<%--                                <div class="media">--%>
<%--                                    <div class="d-flex">--%>
<%--                                        <img src="img/product/review-1.png" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h4>김철수</h4>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p>제가 데려 가고 싶네요</p>--%>
<%--                            </div>--%>
<%--                            <div class="review_item">--%>
<%--                                <div class="media">--%>
<%--                                    <div class="d-flex">--%>
<%--                                        <img src="img/product/review-2.png" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h4>신준수</h4>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p>상태가 새것 같아요</p>--%>
<%--                            </div>--%>
<%--                            <div class="review_item">--%>
<%--                                <div class="media">--%>
<%--                                    <div class="d-flex">--%>
<%--                                        <img src="img/product/review-3.png" alt="">--%>
<%--                                    </div>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h4>홍길동</h4>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                        <i class="fa fa-star"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p>제품이 너무 이뻐요</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-lg-6">--%>
<%--                        <div class="review_box">--%>
<%--                            <h4>리뷰 쓰기</h4>--%>
<%--                            <p>평가 혹은 댓글:</p>--%>
<%--                            <form action="#/" class="form-contact form-review mt-3">--%>
<%--                                <div class="form-group">--%>
<%--                                    <input class="form-control" name="name" type="text" placeholder="회원 이름" required>--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <input class="form-control" name="email" type="email" placeholder="연락처 연락 방법" required>--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <input class="form-control" name="subject" type="text" placeholder="글 제목">--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <textarea class="form-control different-control w-100" name="textarea" id="textarea" cols="30" rows="5" placeholder="글내용"></textarea>--%>
<%--                                </div>--%>
<%--                                <div class="form-group text-center text-md-right mt-3">--%>
<%--                                    <button type="submit" class="button button--active button-review">구매 요청</button>--%>
<%--                                    <!-- 판매자에게 알림 이나 문자 전송? -->--%>
<%--                                </div>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

            <!-- 쓸지안쓸지모르는 댓글 끝 -->

        </div>
    </div>
</section>
<!--================End Product Description Area =================-->


<!-- 쓸지안쓸지모름 -- >
<!--================ Start related Product area =================-->
<%--<section class="related-product-area section-margin--small mt-0">--%>
<%--    <div class="container">--%>
<%--        <div class="section-intro pb-60px">--%>
<%--            <p>다른 인기 아이템</p>--%>
<%--            <h2>급상승 <span class="section-intro__style">인기 상품</span></h2>--%>
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
<!--================ end related Product area =================-->
<!-- 쓸지안쓸지모름 끝 -->

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