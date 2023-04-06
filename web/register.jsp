<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>INSIGHT - 회원가입</title>
    <link rel="icon" href="img/Fevicon.png" type="image/png">
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
                        <%--<li class="nav-item">
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
                            <li class="nav-item">
                              <a class="nav-link" href="productdetail.jsp"
                                >Blog Details</a
                              >
                            </li>--%>
                        <!-- <li class="nav-item"><a class="nav-link" href="checkout.jsp">Product Checkout</a></li>
                      <li class="nav-item"><a class="nav-link" href="confirmation.jsp">Confirmation</a></li>
                      <li class="nav-item"><a class="nav-link" href="mypage.jsp">Shopping Cart</a></li> -->
                        <%--  </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
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
                        </li>--%>
                        <%--            <li class="nav-item active submenu dropdown">
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
                                    </li>--%>
                        <!-- <li class="nav-item">
                          <a class="nav-link" href="contact.jsp">Contact</a>
                        </li>-->
                        <li><h4>저희는 회원제 Flea Market 입니다.</h4></li>
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



<%--<header class="header_area">--%>
<%--    <div class="main_menu">--%>
<%--        <nav class="navbar navbar-expand-lg navbar-light">--%>
<%--            <div class="container">--%>
<%--                <a class="navbar-brand logo_h" href="index.jsp"--%>
<%--                ><img src="img/insightlogo.JPG" alt=""--%>
<%--                /></a>--%>
<%--                <button--%>
<%--                        class="navbar-toggler"--%>
<%--                        type="button"--%>
<%--                        data-toggle="collapse"--%>
<%--                        data-target="#navbarSupportedContent"--%>
<%--                        aria-controls="navbarSupportedContent"--%>
<%--                        aria-expanded="false"--%>
<%--                        aria-label="Toggle navigation"--%>
<%--                >--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                </button>--%>
<%--                <div--%>
<%--                        class="collapse navbar-collapse offset"--%>
<%--                        id="navbarSupportedContent"--%>
<%--                >--%>
<%--                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link" href="mainhome.jsp">홈</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item submenu dropdown">--%>
<%--                            <a--%>
<%--                                    href="#"--%>
<%--                                    class="nav-link dropdown-toggle"--%>
<%--                                    data-toggle="dropdown"--%>
<%--                                    role="button"--%>
<%--                                    aria-haspopup="true"--%>
<%--                                    aria-expanded="false"--%>
<%--                            >상품</a--%>
<%--                            >--%>
<%--                            <ul class="dropdown-menu">--%>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="category.jsp">카테고리</a>--%>
<%--                                </li>--%>
<%--                                <!-- <li class="nav-item">--%>
<%--                                  <a class="nav-link" href="productdetail.jsp"--%>
<%--                                    >Blog Details</a--%>
<%--                                  >--%>
<%--                                </li> -->--%>
<%--                                <!-- <li class="nav-item"><a class="nav-link" href="checkout.jsp">Product Checkout</a></li>--%>
<%--                              <li class="nav-item"><a class="nav-link" href="confirmation.jsp">Confirmation</a></li>--%>
<%--                              <li class="nav-item"><a class="nav-link" href="mypage.jsp">Shopping Cart</a></li> -->--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <!-- <li class="nav-item submenu dropdown">--%>
<%--                          <a--%>
<%--                            href="#"--%>
<%--                            class="nav-link dropdown-toggle"--%>
<%--                            data-toggle="dropdown"--%>
<%--                            role="button"--%>
<%--                            aria-haspopup="true"--%>
<%--                            aria-expanded="false"--%>
<%--                            >Blog</a--%>
<%--                          >--%>
<%--                          <ul class="dropdown-menu">--%>
<%--                            <li class="nav-item">--%>
<%--                              <a class="nav-link" href="blog.jsp">Blog</a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                              <a class="nav-link" href="single-blog.jsp"--%>
<%--                                >Blog Details</a--%>
<%--                              >--%>
<%--                            </li>--%>
<%--                          </ul>--%>
<%--                        </li> -->--%>
<%--                        <li class="nav-item active submenu dropdown">--%>
<%--                            <a--%>
<%--                                    href="#"--%>
<%--                                    class="nav-link dropdown-toggle"--%>
<%--                                    data-toggle="dropdown"--%>
<%--                                    role="button"--%>
<%--                                    aria-haspopup="true"--%>
<%--                                    aria-expanded="false"--%>
<%--                            >로그인 / 회원가입</a--%>
<%--                            >--%>
<%--                            <ul class="dropdown-menu">--%>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="index.jsp">로그인</a>--%>
<%--                                </li>--%>
<%--                                <li class="nav-item">--%>
<%--                                    <a class="nav-link" href="register.jsp">회원가입</a>--%>
<%--                                </li>--%>
<%--                                <!-- <li class="nav-item">--%>
<%--                                  <a class="nav-link" href="tracking-order.jsp"--%>
<%--                                    >Tracking</a--%>
<%--                                  >--%>
<%--                                </li> -->--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <!-- <li class="nav-item">--%>
<%--                          <a class="nav-link" href="contact.jsp">Contact</a>--%>
<%--                        </li>-->--%>
<%--                    </ul>--%>

<%--                    &lt;%&ndash;          <ul class="nav-shop">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <li class="nav-item">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <button><i class="ti-search"></i></button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <!-- <li class="nav-item">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <i class="ti-shopping-cart"></i&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                ><span class="nav-shop__circle">3</span>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </li> -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <!-- <li class="nav-item">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="button button-header" href="#">Buy Now</a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </li> -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;          </ul>&ndash;%&gt;--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </nav>--%>
<%--    </div>--%>
<%--</header>--%>
<!--================ End Header Menu Area =================-->

<!-- ================ start banner area ================= -->
<section class="blog-banner-area" id="category">
    <div class="container h-100">
        <div class="blog-banner">
            <div class="text-center">
                <h1>인사이트에 오신 것을 환영합니다!</h1>
                <nav aria-label="breadcrumb" class="banner-breadcrumb"></nav>
            </div>
        </div>
    </div>
</section>
<!-- ================ end banner area ================= -->

<!--================ 회원가입 =================-->
<section class="login_box_area section-margin">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login_box_img">
                    <div class="hover">
                        <h4>이미 계정이 있나요?</h4>
                        <!--<p>There are advances being made in science and technology everyday, and a good example of this is the</p>-->
                        <a class="button button-account" href="index.jsp">로그인</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="login_form_inner register_form_inner">
                    <h3>회원정보를 입력하세요</h3>
                    <form class="row login_form" action="register.in" name="joinform" method="post">
                        <div class="col-md-12 form-group">
                            <!-- 이름 입력 -->
                            <input
                                    type="text"
                                    title="두 자 이상의 한글로 입력하세요"
                                    class="form-control"
                                    id="username"
                                    name="username"
                                    placeholder="이름"
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '이름'"
                            />
                        </div>
                        <div class="col-md-12 form-group">
                            <!-- 아이디 입력 -->
                            <input
                                    type="text"
                                    title="2~20자 이내의 영문,숫자를 사용하세요"
                                    id="userid"
                                    name="userid"
                                    placeholder="아이디"
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '아이디'"
                                    class="form-control_id"
                            />
                            <button type="button" onclick="idCheck('#userid')" class="form-control_button">중복확인</button>

                        </div>
                        <div class="col-md-12 form-group">
                            <!-- 비밀번호 입력 -->
                            <input
                                    type="password"
                                    title="영문,숫자,특수문자 조합의 8~25자리 비밀번호를 사용하세요"
                                    class="form-control"
                                    id="userpw"
                                    name="userpw"
                                    placeholder="비밀번호"
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '비밀번호'"
                            />
                        </div>
                        <div class="col-md-12 form-group">
                            <!-- 비밀번호 확인 -->
                            <input
                                    type="password"
                                    title="영문,숫자,특수문자 조합의 8~25자리 비밀번호를 사용하세요"
                                    class="form-control"
                                    id="userpwcheck"
                                    name="userpwcheck"
                                    placeholder="비밀번호 확인"
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '비밀번호 확인'"
                            />
                        </div>
                        <div class="col-md-12 form-group">
                            <!-- 주소 입력 -->
                            <input
                                    type="text"
                                    title="한글로 입력하세요"
                                    class="form-control"
                                    id="useraddr"
                                    name="useraddr"
                                    placeholder="주소"
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '주소'"
                            />
                        </div>
                        <div class="col-md-12 form-group">
                            <!-- 전화번호 입력 -->
                            <input
                                    type="text"
                                    title="-을 제외하고 입력하세요"
                                    class="form-control"
                                    id="userphone"
                                    name="userphone"
                                    placeholder="전화번호"
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '전화번호'"
                            />
                        </div>
                        <div class="col-md-12 form-group">
                            <!-- 이메일 입력 -->
                            <input
                                    type="text"
                                    title="(ex. ist@insight.com)"
                                    class="form-control"
                                    id="useremail"
                                    name="useremail"
                                    placeholder="이메일"
                                    onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '이메일'"
                            />
                        </div>
                        <div class="col-md-12 form-group">
                            <!-- 회원가입 버튼 눌렀을때 아이디 중복확인까지 -->
                            <button
                                    type="button"
                                    value="submit"
                                    onclick="joincheck()"
                                    class="button button-register w-100"
                            >
                                가입하기
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================ 회원가입 종료=================-->

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
                            <li><img src="img/gallery/r1.jpg" alt=""/></li>
                            <li><img src="img/gallery/r2.jpg" alt=""/></li>
                            <li><img src="img/gallery/r3.jpg" alt=""/></li>
                            <li><img src="img/gallery/r5.jpg" alt=""/></li>
                            <li><img src="img/gallery/r7.jpg" alt=""/></li>
                            <li><img src="img/gallery/r8.jpg" alt=""/></li>
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
                                임대연 : rilac<br/>
                                김민욱 : m1nwook<br/>
                                문건우 : GEONU-MOON<br/>
                                신준수 : shinjunsu<br/>
                                이상기 : Drifter1999<br/>
                                이태하 : taehalee615
                            </p>

                            <p class="sm-head">
                                <span class="fa fa-envelope"></span>
                                이메일
                            </p>
                            <p>
                                임대연 : eodos6480@gmail.com<br/>
                                김민욱 : supermin0317@naver.com<br/>
                                문건우 : moondy2209@naver.com<br/>
                                신준수 : sjs990306@gmail.com<br/>
                                이상기 : yah9600@gmail.com<br/>
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
<script src="js/joincheck.js"></script>
</body>
</html>