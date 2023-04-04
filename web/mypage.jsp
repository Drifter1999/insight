<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aroma Shop - Cart</title>
    <script>
        function validateInfo() {
            var userid = document.getElementById("userid").value;
            var userpw = document.getElementById("userpw").value;
            var userpw2 = document.getElementById("userpw2").value;
            var useremail = document.getElementById("useremail").value;
            var useraddr = document.getElementById("useraddr").value;
            var userphone = document.getElementById("userphone").value;

            // 아이디 유효성 검사 (2~20자 이내의 영문, 숫자)
            var idRegex = /^(?=.*[a-zA-Z])(?=.*[0-9]).{2,20}$/;
            if (!idRegex.test(userid)) {
                document.getElementById("ideditError").style.display = "block";
                return false;
            } else {
                document.getElementById("ideditError").style.display = "none";
            }

            // 비밀번호 유효성 검사 (영문, 숫자, 특수문자 조합의 8~25자리 비밀번호)
            var pwRegex = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
            if (!pwRegex.test(userpw)) {
                document.getElementById("pweditError").style.display = "block";
                return false;
            } else {
                document.getElementById("pweditError").style.display = "none";
            }

            // 비밀번호 확인
            if (userpw !== userpw2) {
                document.getElementById("pweditError2").style.display = "block";
                return false;
            } else {
                document.getElementById("pweditError2").style.display = "none";
            }

            // 이메일 유효성 검사
            var emailRegex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            if (!emailRegex.test(useremail)) {
                document.getElementById("emerror").style.display = "block";
                return false;
            } else {
                document.getElementById("emerror").style.display = "none";
            }

            // 전화번호 유효성 검사
            var phoneRegex = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}$/;
            if (!phoneRegex.test(userphone)) {
                document.getElementById("phoneerror").style.display = "block";
                return false;
            } else {
                document.getElementById("phoneerror").style.display = "none";
            }

            return true;
        }
    </script>
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
<%--세션 저장 --%>
<c:set var="userSession" value="${userSession}" scope="session"/>
<%--
    userSession.userid = 유저아이디.
    userSession.username = 유저이름.
    userSession.userpw = 유저비밀번호
    userSession.useremail = 유저 이메일
    userSession.useraddr = 유저 주소
    userSession.userphone = 유저휴대폰 번호

    위의 userSession.~~~~ 은 el문으로 사용하시면 값을 꺼내올 수 있습니다.
    ex ${userSession.userid} : 세션 상 userid의 값을 꺼내온다
--%>
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
                                </c:when>
                                <c:otherwise>
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
                                            <a class="nav-link" href="#">구매신청</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul> <%-- 수정된 버튼 --%>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item">
                                    <a class="button button-header" href="javascript:void(0)" onclick="location.href='productUpload.jsp'";>판매하기</a>
                                </li>
                            </ul>

                            <%-- 기존버튼
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
<form action="mypage.in" method="POST" enctype="multipart/form-data" onsubmit="return validateInfo();">
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <%--                        수정할 아이디--%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="userid">*아이디:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="userid" id="userid" required  placeholder= "${userSession.userid}"><br>
                                <span id="ideditError" style="display:none; color:red;">아이디는 2~20자 이내의 영문, 숫자를 사용하세요</span><br>
                            </td>
                        </tr>
                        <%--                           변경할 비밀번호--%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="userpw">*비밀번호:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="userpw" id="userpw" required  placeholder= "${userSession.userpw}"><br>
                                <span id="pweditError" style="display:none; color:red;">영문, 숫자, 특수문자 조합의 8~25자리 비밀번호를 사용하세요</span><br>
                            </td>
                        </tr>
                        <%--                            변경할 비밀번호 확인--%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="userpw">*비밀번호 확인:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="password" name="userpw" id="userpw2" required  placeholder= ""><br>
                                <span id="pweditError2" style="display:none; color:red;">비밀번호가 일치하지 않습니다</span><br>
                            </td>
                        </tr>
                        <%--                          변경할 이메일 확인   --%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="useremail">*이메일:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="useremail" id="useremail" required  placeholder= "${userSession.useremail}" ><br>
                                <span id="emerror" style="display:none; color:red;">올바른 이메일을 입력하세요</span><br>
                            </td>
                        </tr>
                        <%--                             변경할 주소 확인  --%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="useraddr">*주소:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="useraddr" id="useraddr" required  placeholder= "${userSession.useraddr}" ><br>
                                <span id="addrerror" style="display:none; color:red;">주소를 입력하세요</span><br>
                            </td>
                        </tr>
                        <%--                             변경할 전화번호 확인  --%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="userphone">*전화번호:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="userphone" id="userphone" required  placeholder= "${userSession.userphone}" ><br>
                                <span id="phoneerror" style="display:none; color:red;">올바른 전화번호를 입력해주세요</span><br>
                            </td>
                        </tr>
                        <%--                수정하기--%>
                        <tr class="out_button_area">
                            <td class="d-none-l">

                            </td>
                            <td class="">

                            </td>
                            <td>

                            </td>
                            <td>
                                <div class="checkout_btn_inner d-flex align-items-center">
                                    <input class="button button-header" type="submit" value="변경하기">
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</form>
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