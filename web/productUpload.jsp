<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style>
        #preview-container {
            display: flex;
            flex-wrap: wrap;
        }

        .preview {
            width: 100px;
            height: 100px;
            object-fit: cover;
            margin-right: 10px;
            margin-bottom: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<%--세션 저장 --%>
<c:set var="userSession" value="${userSession}" scope="session"/>

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
                                    <a class="nav-link" href="javascrip:void(0)" onclick="location.href='category.jsp'">카테고리</a>>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item active submenu dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${userSession.username}님</a>
                            <ul class="dropdown-menu">
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0)" onclick="location.href='mypage.jsp'">마이페이지</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">구매신청</a>
                                </li>
                            </ul>
                        </li>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="nav-item">
                                <a class="nav-link" href="javascript:void(0)" onclick="location.href='productUpload.jsp'";>
                                    <button type="button" class="btn-custom">
                                        <i class="fa fa-plus"></i> 상품 등록하기
                                    </button>
                                </a>
                            </li>
                        </ul>
                    </c:otherwise>
                </c:choose>
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
                        <li class="breadcrumb-item active" aria-current="page">안녕하세요 ${userSession.username}님</li>
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
                            <input type="hidden" id="userod" name="userid" value=" ${userSession.userid}"/>
                        </tr>
                        </thead>
                        <tbody>
<%--                        이미지 업로드--%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productImage">*상품 이미지:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <input type="button" id="productImage" value="이미지 추가" onclick="addImageUploadField()">
                                <div id="imageUploadFields"></div>
<%--                                request.getParameter("productImage0"), request.getParameter("fileUploads1"), ...--%>
                                <p> 최대 3개 까지 업로드 가능합니다.</p>
                            </td>
                        </tr>
<%--
<%--                        이미지 미리보기--%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="preview-container">*이미지 미리보기:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
<%--                                <img id="preview" class="preview" src="" alt="Preview Image">--%>
                                <div id="preview-container"></div>
                                <p> 이미지를 클릭하면 새 브라우저에서 확인 가능합니다.</p>
                                <p> 첫 번째 이미지가 게시글의 썸네일 입니다.</p>
                            </td>
                        </tr>
<%--                            카테고리 선택--%>
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="media-body">
                                        <label for="productCategoryNum">카테고리 선택:</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <select id="productCategoryNum" name="productCategoryNum" onchange="updateSelectedCategory()">
                                    <option value="">선택해주세요</option>
                                    <option value="1">의류</option>
                                    <option value="2">잡화</option>
                                    <option value="3">전자기기</option>
                                    <option value="4">서적</option>
                                    <option value="5">악세서리</option>
                                    <option value="6">기타</option>
                                </select>
                                <br><br>
                                <p>
                                    <div id="selectedCategory">
                                        선택한 카테고리:
                                    </div>
                                </p>
                            </td>
                        </tr>
<%--                        제목 입력--%>
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
<%--                           상품 입력--%>
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
<%--                            상품 설명--%>
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
<%--                             상품 가격--%>
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
<%--                                상품 수량--%>
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
<%--                상품 등록 버튼--%>
                        <tr class="out_button_area">
                            <td class="d-none-l">

                            </td>
                            <td class="">

                            </td>
                            <td>

                            </td>
                            <td>
                                <div class="checkout_btn_inner d-flex align-items-center">
                                        <input class="button button-header" type="submit" value="상품 등록">
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
                            우리는 중고거래에 개입하지 않는다.
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
<script>
    var fieldCount = 1;
    function addImageUploadField() {
        if (fieldCount > 3) {
            alert("최대 3개까지 업로드 가능합니다.");
            return;
        }
        else{

            var imageUploadFields = document.getElementById("imageUploadFields");
            var newField = document.createElement("input");
            newField.type = "file";
            newField.name = "productImage" + fieldCount;
            newField.id = "productImage" + fieldCount;
            newField.multiple = false;
            newField.accept = "image/*"
            newField.required = true;
            newField.onchange = function(event) {previewImage(event)};
            // newField.onchange onchange 이벤트추가후 이벤트 발생시 호출previewImage(event)
            imageUploadFields.appendChild(newField);
            fieldCount++;
        }
    }
</script>
<script src="js/productUpload.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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