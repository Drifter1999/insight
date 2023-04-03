<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aroma Shop - Home</title>
    <link rel="icon" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!-- ================ Start Header Menu Area =================
   <header class="header_area">
   <div class="main_menu">
     <nav class="navbar navbar-expand-lg navbar-light">
       <div class="container">
         <a class="navbar-brand logo_h" href="index.jsp"><img src="img/logo.png" alt=""></a>


         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
           aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
         </button>
         <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
           <ul class="nav navbar-nav menu_nav ml-auto mr-auto"></ul>

           <ul class="nav-shop">
             <li class="nav-item"><button><i class="ti-search"></i></button></li>
             <li class="nav-item"><a class="button button-header" href="#">~~~님</a></li>
           </ul>
         </div>
       </div>
     </nav>
   </div>
 </header>
   ================ End Header Menu Area =================-->
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
<main class="site-main">



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

    <!-- ================ trending product section start ================= -->
    <!--제품이 카드로 되어있고 제품 수만큼 나와야하므로 js로 반복문 사용해야 함.-->
    <section class="section-margin calc-60px">
        <div class="container">
            <div class="section-intro pb-60px">

                <h2>등록된 <span class="section-intro__style">제품</span></h2>
                <br>
                <p>중고 제품이기에 사기를 조심해주세요</p>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4 col-xl-3">
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
                            <h4 class="card-product__title"><a href="productdetail.jsp">Quartz Belt Watch</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="img/product/product2.png" alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Beauty</p>
                            <h4 class="card-product__title"><a href="productdetail.jsp">Women Freshwash</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="img/product/product3.png" alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Decor</p>
                            <h4 class="card-product__title"><a href="productdetail.jsp">Room Flash Light</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="img/product/product4.png" alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Decor</p>
                            <h4 class="card-product__title"><a href="productdetail.jsp">Room Flash Light</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="img/product/product5.png" alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Accessories</p>
                            <h4 class="card-product__title"><a href="productdetail.jsp">Man Office Bag</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="img/product/product6.png" alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Kids Toy</p>
                            <h4 class="card-product__title"><a href="productdetail.jsp">Charging Car</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="img/product/product7.png" alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Accessories</p>
                            <h4 class="card-product__title"><a href="productdetail.jsp">Blutooth Speaker</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3">
                    <div class="card text-center card-product">
                        <div class="card-product__img">
                            <img class="card-img" src="img/product/product8.png" alt="">
                            <ul class="card-product__imgOverlay">
                                <li><button><i class="ti-search"></i></button></li>
                                <li><button><i class="ti-shopping-cart"></i></button></li>
                                <li><button><i class="ti-heart"></i></button></li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <p>Kids Toy</p>
                            <h4 class="card-product__title"><a href="#">Charging Car</a></h4>
                            <p class="card-product__price">$150.00</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ trending product section end ================= -->


    <!-- ================ offer section start ================= -->
    <section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="offer__content text-center">
                        <h2>이용해 주셔서 감사합니다</h2>
                        <h4>저희는 언제나 여러분들의 안전한 거래를 응원합니다.</h4>
                        <p>안전한 거래를 위해서 더 치트 사용 부탁드립니다.</p>
                        <!--              <a class="button button&#45;&#45;active mt-3 mt-xl-4" href="#">Shop Now</a>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ offer section end ================= -->

    <!-- ================ Best Selling item  carousel ================= -->
    <!-- <section class="section-margin calc-60px">
       <div class="container">
         <div class="section-intro pb-60px">
           <p>Popular Item in the market</p>
           <h2>Best <span class="section-intro__style">Sellers</span></h2>
         </div>
         <div class="owl-carousel owl-theme" id="bestSellerCarousel">
           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product1.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Accessories</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Quartz Belt Watch</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>

           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product2.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Beauty</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Women Freshwash</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>

           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product3.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Decor</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Room Flash Light</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>

           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product4.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Decor</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Room Flash Light</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>

           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product1.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Accessories</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Quartz Belt Watch</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>

           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product2.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Beauty</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Women Freshwash</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>

           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product3.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Decor</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Room Flash Light</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>

           <div class="card text-center card-product">
             <div class="card-product__img">
               <img class="img-fluid" src="img/product/product4.png" alt="">
               <ul class="card-product__imgOverlay">
                 <li><button><i class="ti-search"></i></button></li>
                 <li><button><i class="ti-shopping-cart"></i></button></li>
                 <li><button><i class="ti-heart"></i></button></li>
               </ul>
             </div>
             <div class="card-body">
               <p>Decor</p>
               <h4 class="card-product__title"><a href="productdetail.jsp">Room Flash Light</a></h4>
               <p class="card-product__price">$150.00</p>
             </div>
           </div>
         </div>
       </div>
     </section>-->
    <!-- ================ Best Selling item  carousel end ================= -->

    <!-- ================ Blog section start ================= -->
    <!--<section class="blog">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Popular Item in the market</p>
          <h2>Latest <span class="section-intro__style">News</span></h2>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-blog">
              <div class="card-blog__img">
                <img class="card-img rounded-0" src="img/blog/blog1.png" alt="">
              </div>
              <div class="card-body">
                <ul class="card-blog__info">
                  <li><a href="#">By Admin</a></li>
                  <li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
                </ul>
                <h4 class="card-blog__title"><a href="single-blog.jsp">The Richland Center Shooping News and weekly shooper</a></h4>
                <p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
                <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-blog">
              <div class="card-blog__img">
                <img class="card-img rounded-0" src="img/blog/blog2.png" alt="">
              </div>
              <div class="card-body">
                <ul class="card-blog__info">
                  <li><a href="#">By Admin</a></li>
                  <li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
                </ul>
                <h4 class="card-blog__title"><a href="single-blog.jsp">The Shopping News also offers top-quality printing services</a></h4>
                <p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
                <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-blog">
              <div class="card-blog__img">
                <img class="card-img rounded-0" src="img/blog/blog3.png" alt="">
              </div>
              <div class="card-body">
                <ul class="card-blog__info">
                  <li><a href="#">By Admin</a></li>
                  <li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
                </ul>
                <h4 class="card-blog__title"><a href="single-blog.jsp">Professional design staff and efficient equipment you’ll find we offer</a></h4>
                <p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
                <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>-->
    <!-- ================ Blog section end ================= -->

    <!-- ================ Subscribe section start ================= -->
    <!--<section class="subscribe-position">
      <div class="container">
        <div class="subscribe text-center">
          <h3 class="subscribe__title">Get Update From Anywhere</h3>
          <p>Bearing Void gathering light light his eavening unto dont afraid</p>
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
    </section>-->
    <!-- ================ Subscribe section end ================= -->



</main>


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