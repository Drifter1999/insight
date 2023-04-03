<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>INSIGHT - 로그인</title>
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
<section class="blog-banner-area" id="category">
  <div class="container h-100">
    <div class="blog-banner">
      <div class="text-center">
        <h1>로그인 / 회원가입</h1>
        <!-- <nav aria-label="breadcrumb" class="banner-breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">
              로그인/회원가입
            </li>
          </ol>
        </nav> -->
      </div>
    </div>
  </div>
</section>
<!-- ================ end banner area ================= -->

<!--================Login Box Area =================-->
<section class="login_box_area section-margin">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="login_box_img">
          <div class="hover">
            <h4>처음 방문하시나요?</h4>
            <p>아래 버튼을 눌러 회원가입 하세요.</p>
            <a class="button button-account" href="register.jsp"
            >계정 생성</a
            >
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="login_form_inner">
          <h3>로그인</h3>
          <form
                  class="row login_form"
                  id="loginForm"
                  name="loginForm"
                  method="post"
                  action="login.in"
          >
            <div class="col-md-12 form-group">
              <input
                      type="text"
                      class="form-control"
                      id="userid"
                      name="userid"
                      placeholder="아이디"
                      onfocus="this.placeholder = ''"
                      onblur="this.placeholder = '아이디'"
              />
            </div>
            <div class="col-md-12 form-group">
              <input
                      type="password"
                      class="form-control"
                      id="userpw"
                      name="userpw"
                      placeholder="패스워드"
                      onfocus="this.placeholder = ''"
                      onblur="this.placeholder = '패스워드'"
              />
            </div>
            <div class="col-md-12 form-group">
              <button
                      type="submit"
                      class="button button-login w-100"
              >
                로그인
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<!--================End Login Box Area =================-->

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
<!-- 로그인 버튼을 눌렀을 때 아이디와 비밀번호가 빈값인지 확인하고 알림창을 띄우는 기능을 추가하기 위한 코드-->
<script src="js/login.js"></script>

</body>
</html>
