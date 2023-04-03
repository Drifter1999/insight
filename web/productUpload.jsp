<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>상품 업로드</title>
    <!--   <link rel="icon" href="img/Fevicon.png" type="image/png">-->
    <!--  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">-->
    <!--  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">-->
    <!--   <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">-->
    <!--   <link rel="stylesheet" href="vendors/linericon/style.css">-->
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
<%--<header class="header_area">--%>
<%--    <div class="main_menu">--%>
<%--        <nav class="navbar navbar-expand-lg navbar-light">--%>
<%--            <div class="container">--%>
<%--                <a class="navbar-brand logo_h" href="index.jsp"><img src="img/logo.png" alt=""></a>--%>
<%--                <button class="navbar-toggler" type="button" data-toggle="collapse"--%>
<%--                        data-target="#navbarSupportedContent"--%>
<%--                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                    <span class="icon-bar"></span>--%>
<%--                </button>--%>
<%--                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">--%>
<%--                    <!-- 이 부분 마이페이지 눌렀을때 회원정보 보이게 -->--%>
<%--                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">--%>
<%--                        <li class="nav-item"><a class="nav-link" href="mainhome.jsp">홈</a></li>--%>
<%--                        <li class="nav-item active submenu dropdown">--%>
<%--                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"--%>
<%--                               aria-haspopup="true"--%>
<%--                               aria-expanded="false">샵</a>--%>
<%--                            <ul class="dropdown-menu">--%>
<%--                                <li class="nav-item"><a class="nav-link" href="category.jsp">분류</a></li>--%>
<%--                                <li class="nav-item"><a class="nav-link" href="single-product.jsp">제품 정보</a></li>--%>
<%--                                <li class="nav-item"><a class="nav-link" href="checkout.jsp">구매하기</a></li>--%>
<%--                                <li class="nav-item"><a class="nav-link" href="confirmation.jsp">확인</a></li>--%>
<%--                                <li class="nav-item"><a class="nav-link" href="mypage.jsp">장바구니</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item submenu dropdown">--%>
<%--                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"--%>
<%--                               aria-haspopup="true"--%>
<%--                               aria-expanded="false">블로그</a>--%>
<%--                            <ul class="dropdown-menu">--%>
<%--                                <li class="nav-item"><a class="nav-link" href="blog.jsp">블로그</a></li>--%>
<%--                                <li class="nav-item"><a class="nav-link" href="register.jsp">가입하기</a></li>--%>
<%--                                <li class="nav-item"><a class="nav-link" href="single-blog.jsp">블로그 정보</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item submenu dropdown">--%>
<%--                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"--%>
<%--                               aria-haspopup="true"--%>
<%--                               aria-expanded="false">페이지</a>--%>
<%--                            <ul class="dropdown-menu">--%>
<%--                                <li class="nav-item"><a class="nav-link" href="index.jsp">로그인</a></li>--%>
<%--                                <li class="nav-item"><a class="nav-link" href="tracking-order.jsp">배송조회</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item"><a class="nav-link" href="contact.jsp">고객센터</a></li>--%>
<%--                    </ul>--%>

<%--                    <!-- 장바구니 / 구매하기 버튼 삭제  -->--%>
<%--                    <ul class="nav-shop">--%>
<%--                        <li class="nav-item">--%>
<%--                            <button><i class="ti-search"></i></button>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item"><a class="button button-header" href="#">구매하기</a></li>--%>
<%--                    </ul>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </nav>--%>
<%--    </div>--%>
<%--</header>--%>
<!-- 헤더 스타트 통일( 기준 login파일헤더  )-->
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand logo_h" href="index.jsp"
                ><img src="img/logo.png" alt=""
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

                    <ul class="nav-shop">
                        <li class="nav-item">
                            <button><i class="ti-search"></i></button>
                        </li>
                        <!-- <li class="nav-item">
                          <button>
                            <i class="ti-shopping-cart"></i
                            ><span class="nav-shop__circle">3</span>
                          </button>
                        </li> -->
                        <!-- <li class="nav-item">
                          <a class="button button-header" href="#">Buy Now</a>
                        </li> -->
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!-- 헤더 끝 index파일 헤더로 통일 -->
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
<form action="productUpload.in" method="POST" enctype="multipart/form-data" onsubmit="return validateForm();">
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">기본정보</th>
                            <th scope="col"> *필수항목</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productImage1">*상품 이미지:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="file" name="productImage1" id="productImage1" accept="image/*" multiple required>
                                <%--FileItemFactory factory = new DiskFileItemFactory();
                                ServletFileUpload upload = new ServletFileUpload(factory);

                                List<FileItem> items = upload.parseRequest(request);
                                int numFiles = 0;
                                String[] fileNames = new String[3];
                                for (FileItem item : items) {
                                if (!item.isFormField()) {
                                if (numFiles < 3) {
                                fileNames[numFiles++] = item.getName();
                                // 파일 처리 코드
                                } else {
                                // 네 번째 파일부터는 무시
                                }
                                } else {
                                // 일반 필드 처리 코드
                                }
                                }
                                // FileItem 객체를 배열 형태로 선언, 최대 3개까지 파일을 저장.
                                numFiles 변수를 사용하여 현재 업로드된 파일의 수를 카운트하고,
                                업로드된 파일이 최대 3개를 넘어가면 처리x.
                                파일 처리 코드에서는 fileNames 배열에 파일 이름을 저장, 파일을 업로드등의 작업을 수행
                                이런식으로 작성 하면 될듯

                                추가로 썸네일을 보여줄때 변수에 담을 수 있도록 하면 될듯
                                String thumbnail = "";
                                if (numFiles == 1) {

                                // 첫 번째 파일을 썸네일로 사용
                                thumbnail = item.getName();
                                    // 썸네일 처리 코드
                                }

                                --%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productTitle">*제목:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="productTitle" id="productTitle" required  placeholder= "제목을 입력해주세요." oninput="checkTitle()"><br>
                                <span id="titleError" style="display:none; color:red;">상품명을 2자 이상 입력해주세요.</span><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productName">*상품 이름:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="productName" id="productName" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productDetail">*상품 설명:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <textarea name="productDetail" id="productDetail" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productPrice">*상품 가격:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="text" name="productPrice" id="productPrice" required
                                       placeholder="숫자만 입력해주세요."
                                       oninput="this.value=this.value.replace(/[^0-9]/g,'').replace(/(\d)(?=(\d{3})+(?:\.\d+)?$)/g, '$1,')"
                                       onkeyup="checkNumberOnly(event)"> 원 <br>
                                <label>배송비 포함여부:</label>
                                <input type="checkbox" name="shippingIncluded" id="shippingIncluded" value="yes">
                                <label for="shippingIncluded">배송비 포함</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productQuantity">상품 수량:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="number" name="productQuantity" id="productQuantity" required><br>
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
                                        <input class="primary-btn ml-2" type="submit" value="상품 등록">
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
<%--<footer>--%>
<%--    <div class="footer-area footer-only">--%>
<%--        <div class="container">--%>
<%--            <div class="row section_gap">--%>
<%--                <div class="col-lg-3 col-md-6 col-sm-6">--%>
<%--                    <div class="single-footer-widget tp_widgets ">--%>
<%--                        <h4 class="footer_title large_title">우리 목표</h4>--%>
<%--                        <p>--%>
<%--                            개빠르게 배송하기--%>
<%--                        </p>--%>
<%--                        <p>--%>
<%--                            극한의 가성비--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">--%>
<%--                    <div class="single-footer-widget tp_widgets">--%>
<%--                        <h4 class="footer_title">바로가기</h4>--%>
<%--                        <ul class="list">--%>
<%--                            <li><a href="#">홈</a></li>--%>
<%--                            <li><a href="#">샵</a></li>--%>
<%--                            <li><a href="#">블로그</a></li>--%>
<%--                            <li><a href="#">제품</a></li>--%>
<%--                            <li><a href="#">브랜드</a></li>--%>
<%--                            <li><a href="#">고객문의</a></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-lg-2 col-md-6 col-sm-6">--%>
<%--                    <div class="single-footer-widget instafeed">--%>
<%--                        <h4 class="footer_title">사진</h4>--%>
<%--                        <ul class="list instafeed d-flex flex-wrap">--%>
<%--                            <li><img src="img/gallery/r1.jpg" alt=""></li>--%>
<%--                            <li><img src="img/gallery/r2.jpg" alt=""></li>--%>
<%--                            <li><img src="img/gallery/r3.jpg" alt=""></li>--%>
<%--                            <li><img src="img/gallery/r5.jpg" alt=""></li>--%>
<%--                            <li><img src="img/gallery/r7.jpg" alt=""></li>--%>
<%--                            <li><img src="img/gallery/r8.jpg" alt=""></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">--%>
<%--                    <div class="single-footer-widget tp_widgets">--%>
<%--                        <h4 class="footer_title">고객문의</h4>--%>
<%--                        <div class="ml-40">--%>
<%--                            <p class="sm-head">--%>
<%--                                <span class="fa fa-location-arrow"></span>--%>
<%--                                사무실--%>
<%--                            </p>--%>
<%--                            <p>뉴욕시티다</p>--%>

<%--                            <p class="sm-head">--%>
<%--                                <span class="fa fa-phone"></span>--%>
<%--                                Phone Number--%>
<%--                            </p>--%>
<%--                            <p>--%>
<%--                                02-111-1111 <br>--%>
<%--                                010-1111-1111--%>
<%--                            </p>--%>

<%--                            <p class="sm-head">--%>
<%--                                <span class="fa fa-envelope"></span>--%>
<%--                                이메일--%>
<%--                            </p>--%>
<%--                            <p>--%>
<%--                                free@infoexample.com <br>--%>
<%--                                www.infoexample.com--%>
<%--                            </p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="footer-bottom">--%>
<%--        <div class="container">--%>
<%--            <div class="row d-flex">--%>
<%--                <p class="col-lg-12 footer-text text-center">--%>
<%--                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->--%>
<%--                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>--%>
<%--                    All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by--%>
<%--                    <a href="https://colorlib.com" target="_blank">Colorlib</a>--%>
<%--                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>
<!-- 푸터 index 통일 스타트 라인 -->
<footer class="footer">
    <div class="footer-area">
        <div class="container">
            <div class="row section_gap">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title large_title">우리들이 할일</h4>
                        <p>
                            4월 12일이 발표이므로 그 떄 까지 중고거래 사이트를 완성시켜야함. 해당 사이트는 유저간 거래 중개 사이트이므로, 우리는 중고거래의 개입하지 않는다.
                        </p>
                        <p>
                            그러므로 거래 시 더 치트 같은 사이트를 이용하여서 사기를 미연에 방지하자.
                        </p>
                    </div>
                </div>
                <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title">조원 이름</h4>
                        <ul class="list">
                            <li><a href="#">임대연(조장님)</a></li>
                            <li><a href="#">김민욱</a></li>
                            <li><a href="#">문건우</a></li>
                            <li><a href="#">신준수</a></li>
                            <li><a href="#">이상기</a></li>
                            <li><a href="#">이태하</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget instafeed">
                        <h4 class="footer_title">Gallery</h4>
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
                        <h4 class="footer_title">Contact Us</h4>
                        <div class="ml-40">
                            <p class="sm-head">
                                <span class="fa fa-location-arrow"></span>
                                본사
                            </p>
                            <p>율도국 전우치로49 101</p>

                            <p class="sm-head">
                                <span class="fa fa-phone"></span>
                                연락처
                            </p>
                            <p>
                                010-1234-5678 <br>
                                010-2345-6789
                            </p>

                            <p class="sm-head">
                                <span class="fa fa-envelope"></span>
                                이메일
                            </p>
                            <p>
                                aaa@mukgosib.da <br>
                                aaa@mukgisil.da
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
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>

<!-- 푸터 통일 -->
<!--================ End footer Area  =================-->

<script>
    function checkTitle() {
        var titleInput = document.getElementById("title");
        var titleError = document.getElementById("titleError");
        if (titleInput.value.length < 2) {
            titleError.style.display = "inline";
        } else {
            titleError.style.display = "none";
        }
    }

    function checkNumberOnly(event) {
        var code = event.keyCode;
        if (code < 48 || code > 57) {
            alert("숫자만 입력해주세요.");
            event.target.value = event.target.value.replace(/[^0-9]/g, '');
        }
    }
    function validateForm() {
        var productName = document.getElementById("productName");
        var productTitle = document.getElementById("productTitle");
        var productDescription = document.getElementById("productDescription");
        var productQuantity = document.getElementById("productQuantity");
        var productPrice = document.getElementById("productPrice");

        if (productName.value.trim() === "") {
            alert("상품 이름을 입력해주세요.");
            productName.focus();
            return false;
        }

        if (productTitle.value.trim() === "") {
            alert("상품 제목을 입력해주세요.");
            productTitle.focus();
            return false;
        }

        if (productDescription.value.trim() === "") {
            alert("상품 설명을 입력해주세요.");
            productDescription.focus();
            return false;
        }

        if (productQuantity.value.trim() === "") {
            alert("상품 수량을 입력해주세요.");
            productQuantity.focus();
            return false;
        }

        if (productPrice.value.trim() === "") {
            alert("상품 가격을 입력해주세요.");
            productPrice.focus();
            return false;
        }

        return true;
    }
</script>
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