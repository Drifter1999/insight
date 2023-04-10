<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>INSIGHT - 나의 글 목록</title>
    <link rel="icon" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
</head>
<style>
    label {
        display: inline-flex;
        align-items: center;
        gap: 0.5rem;
        cursor: pointer;
    }
    [type="checkbox"] {
        appearance: none;
        position: relative;
        border: max(2px, 0.1em) solid gray;
        border-radius: 1.25em;
        width: 2.25em;
        height: 1.25em;
    }
    [type="checkbox"]::before {
        content: "";
        position: absolute;
        left: 0;
        width: 1em;
        height: 1em;
        border-radius: 50%;
        transform: scale(0.8);
        background-color: gray;
        transition: left 250ms linear;
    }
    [type="checkbox"]:checked {
        background-color: tomato;
        border-color: tomato;
    }
    [type="checkbox"]:checked::before {
        background-color: white;
        left: 1em;
    }
    [type="checkbox"]:disabled {
        border-color: lightgray;
        opacity: 0.7;
        cursor: not-allowed;
    }
    [type="checkbox"]:disabled:before {
        background-color: lightgray;
    }
    [type="checkbox"]:disabled + span {
        opacity: 0.7;
        cursor: not-allowed;
    }
    [type="checkbox"]:focus-visible {
        outline-offset: max(2px, 0.1em);
        outline: max(2px, 0.1em) solid tomato;
    }
    [type="checkbox"]:enabled:hover {
        box-shadow: 0 0 0 max(4px, 0.2em) lightgray;
    }
</style>
<body>
<c:set var="myShopList" value="${myshoplist}" scope="request"/>
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

<!-- ================ start banner area ================= -->
<section class="blog-banner-area" id="category">
    <div class="container h-100">
        <div class="blog-banner">
            <div class="text-center">
                <h1>${userSession.username}의 상점</h1>
                <nav aria-label="breadcrumb" class="banner-breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page">부자가 되고싶나요? 지금 상품을 올려보세요!</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- ================ end banner area ================= -->



<!--================Cart Area =================-->
<section class="cart_area">
    <div class="container">
        <div class="cart_inner">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col"><b>목록</b></th>
                        <th scope="col"><b>카테고리</b></th>
                        <th scope="col"><b>판매여부</b></th>
                        <th scope="col"><b>금액</b></th>
                        <th scope="col"><b>게시글삭제</b></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="myItems" items="${myShopList}">
                        <tr>
                            <td>
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="${pageContext.request.contextPath}/productimage${myItems.productimage1}" alt="" style="width: 150px; height: 150px; object-fit: cover; margin-right: 10px; margin-bottom: 10px;">

                                    </div>
                                    <div class="media-body" >
                                        <input type="hidden" id="userid" name="userid" value="${userSession.userid}">
                                        <input type="hidden" id="productnum" name="productnum" value="${myItems.productnum}">
                                            <a class="text_maxlength"  href="javascript:void(0)" onclick="location.href='productdetail.in?productNum='+${myItems.productnum}">
                                                    ${myItems.producttitle}
                                            </a>
                                    </div>
                                </div>
                            </td>
                            <td class="table_css">
                                <h5>   ${myItems.productcategoryname} </h5>
                            </td>


                            <td class="table_css">
                                <label class="switch">
                                    <input type="checkbox" name="switch${myItems.productnum}" onchange="changeCheck(${myItems.productnum})" checked>
                                    <span class="slider" name="productnum${myItems.productnum}" ></span>
                                </label>
                            </td>


                            <td class="table_css">
                                <h5> ${myItems.productprice}</h5>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary" onclick="confirmDelete()"><i class="fa fa-times"></i></button></td>
                        </tr>
                    </c:forEach>
                    <tr class="bottom_button">
                        <td></td>
                        <td></td>
                        <td>
                            <div class="cupon_text d-flex align-items-center">
                                <a class="primary-btn" href="#">이전 페이지</a>
                                <a class="primary-btn" href="#">다음 페이지</a>
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
<!-- 토글 스위치 판매중/ 판매완료-->
<%--<script>--%>
<%--    $(".switch input[type='checkbox']").click(function(){--%>
<%--        $(this).siblings("p").toggle();--%>
<%--    });--%>
<%--</script>--%>

<script>
    /*var check = $("input[type='checkbox']" );
    check.click(function(){
        $(".switch-p").toggle();
    });*/
    function confirmDelete() {
        if(confirm("데이터를 삭제하시겠습니까?")) {
            // 여기에 데이터 삭제 코드를 작성합니다.
            <%--location.href="/productdelete.in?productnum=${productnum}&${userid}&#{username}";--%>
        }
    }
</script>

<script>
    /*let check = $("input[name=switch]:checked");
    console.log("check : " + check);

    let xhr = new XMLHttpRequest();
    let userid = $("#userid").val();
    let productnum = $("#productnum").val();
    let uri = "OpenAndCloseProduct.jsp?productnum=" + productnum + "&userid="+userid;
    console.log("userid : " + userid);
    console.log("productnum : " + productnum);
    console.log("uri : " + uri);
*/
    /*xhr.open("GET", uri, true);
    xhr.send();
    xhr.onreadystatechange = function () {
        if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
            alert("이이이");
        }
    }*/

    function changeCheck(productnum) {
        let val = $('input[name="switch'+productnum+'"]:checked');
        console.log(val);
        if(val.length > 0) {
            let Sname = "productnum" + productnum;
            $('span[name="' + Sname + '"]').text("판매중");
        } else {
            let Fname = "productnum" + productnum;
            $('span[name="' + Fname + '"]').text("판매완경");
        }
    }
</script>
</body>
</html>