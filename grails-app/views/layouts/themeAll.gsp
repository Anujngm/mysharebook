<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <title>SharesBook - An investment enterprise</title>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">

    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>

    <link id="pagestyle" rel="stylesheet" type="text/css" href="${resource(dir: 'css/theme-css', file: 'skin-1.css')}">

    <link href="${resource(dir: 'css/theme-css', file: 'style.css')}" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

    <script>
        paceOptions = {
            elements: true
        };
    </script>
    <script src="${resource(dir: 'js/theme-js', file: 'pace.min.js')}"></script>
    <script src="${resource(dir: 'js/theme-js', file: 'pace.min.js')}"></script>
    <script type="text/javascript">
        function swapStyleSheet(sheet) {
            document.getElementById('pagestyle').setAttribute('href', sheet);
        }
    </script>
    <style>
    .themeControll {
        background: #2d3e50;
        height: auto;
        width: 100px;
        position: fixed;
        left: 0;
        padding: 20px;
        top: 20%;
        z-index: 999999;
        -webkit-transform: translateX(0);
        -moz-transform: translateX(0);
        -o-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
        opacity: 1;
        -ms-filter: none;
        filter: none;
        -webkit-transition: opacity .5s linear, -webkit-transform .7s cubic-bezier(.56, .48, 0, .99);
        -moz-transition: opacity .5s linear, -moz-transform .7s cubic-bezier(.56, .48, 0, .99);
        -o-transition: opacity .5s linear, -o-transform .7s cubic-bezier(.56, .48, 0, .99);
        -ms-transition: opacity .5s linear, -ms-transform .7s cubic-bezier(.56, .48, 0, .99);
        transition: opacity .5s linear, transform .7s cubic-bezier(.56, .48, 0, .99);
    }

    .themeControll.active {
        display: block;
        -webkit-transform: translateX(-100px);
        -moz-transform: translateX(-100px);
        -o-transform: translateX(-100px);
        -ms-transform: translateX(-1020px);
        transform: translateX(-100px);
        -webkit-transition: opacity .5s linear, -webkit-transform .7s cubic-bezier(.56, .48, 0, .99);
        -moz-transition: opacity .5s linear, -moz-transform .7s cubic-bezier(.56, .48, 0, .99);
        -o-transition: opacity .5s linear, -o-transform .7s cubic-bezier(.56, .48, 0, .99);
        -ms-transition: opacity .5s linear, -ms-transform .7s cubic-bezier(.56, .48, 0, .99);
        transition: opacity .5s linear, transform .7s cubic-bezier(.56, .48, 0, .99);
    }

    .themeControll a {
        border-radius: 3px;
        clear: both;
        display: block;
        height: 25px;
        margin-bottom: 4px;
        width: 50px;
    }

    .tbtn {
        background: #2D3E50;
        color: #FFFFFF !important;
        font-size: 30px;
        height: auto;
        padding: 10px;
        position: absolute;
        right: -40px;
        top: 0;
        width: 40px;
        cursor: pointer;
    }

    @media (max-width: 780px) {
        .themeControll {
            display: none;
        }
    }</style>
    <g:layoutHead/>
</head>

<body>

<div class="navbar navbar-tshop navbar-fixed-top megamenu" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span
                    class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span></button>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-cart"><i
                    class="fa fa-shopping-cart colorWhite"></i> </button>
            <a class="navbar-brand " href="index.html"><strong>SharesBook</strong></a>


        </div>


        <div class="navbar-collapse collapse" style="">
          <ul class="nav navbar-nav">
                <li class="active" role="presentation"><a href="../user/HomePage.gsp">Home</a></li>
          <li role="presentation">
              <sec:ifAnyGranted roles="COMPANY">
                  <a href="${createLink(controller: "company", action: "showUserCompanyProfile")}">Company Profile</a>
              </sec:ifAnyGranted>
          </li>
              <li role="presentation">
                  <sec:ifAnyGranted roles="COMPANY">
                      <a href="${createLink(controller: "fund", action: "createFundingProfile")}">Raise Fund</a>
                  </sec:ifAnyGranted>
              </li>
              <li role="presentation">
                  <sec:ifAnyGranted roles="INVESTOR">
                      <a href="${createLink(controller: "investor", action: "showUserInvestorProfile")}">Investor Profile</a>
                  </sec:ifAnyGranted>
              </li>
              <li role="presentation">
                  <sec:ifAnyGranted roles="INVESTOR">
                      <a href="${createLink(controller: "investment", action: "companyListToInvest")}">Do Investment</a>
                  </sec:ifAnyGranted>
              </li>
              <li role="presentation">
                  <sec:ifAnyGranted roles="INVESTOR">
                      <a href="${createLink(controller: "investment", action: "showMyInvestment")}">My Investments</a>
                  </sec:ifAnyGranted>
              </li>

          %{--<li class="dropdown megamenu-80width "><a data-toggle="dropdown" class="dropdown-toggle"--}%
                %{--href="#">SHOP <b class="caret"></b></a>--}%
                %{--<ul class="dropdown-menu">--}%
                %{--<li class="megamenu-content">--}%

                %{--<ul class="col-lg-2  col-sm-2 col-md-2  unstyled noMarginLeft">--}%
                %{--<li>--}%
                %{--<p><strong>Women Collection</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="#">Kameez</a></li>--}%
                %{--<li><a href="#">Tops</a></li>--}%
                %{--<li><a href="#">Shoes</a></li>--}%
                %{--<li><a href="#">T shirt</a></li>--}%
                %{--<li><a href="#">TSHOP</a></li>--}%
                %{--<li><a href="#">Party Dress</a></li>--}%
                %{--<li><a href="#">Women Fragrances</a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2  unstyled">--}%
                %{--<li>--}%
                %{--<p><strong>Men Collection</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="#">Panjabi</a></li>--}%
                %{--<li><a href="#">Male Fragrances</a></li>--}%
                %{--<li><a href="#">Scarf</a></li>--}%
                %{--<li><a href="#">Sandal</a></li>--}%
                %{--<li><a href="#">Underwear</a></li>--}%
                %{--<li><a href="#">Winter Collection</a></li>--}%
                %{--<li><a href="#">Men Accessories</a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2  unstyled">--}%
                %{--<li>--}%
                %{--<p><strong>Top Brands</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="#">Diesel</a></li>--}%
                %{--<li><a href="#">Farah</a></li>--}%
                %{--<li><a href="#">G-Star RAW</a></li>--}%
                %{--<li><a href="#">Lyle & Scott</a></li>--}%
                %{--<li><a href="#">Pretty Green</a></li>--}%
                %{--<li><a href="#">TSHOP</a></li>--}%
                %{--<li><a href="#">TANJIM</a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-3  col-sm-3 col-md-3 col-xs-6">--}%
                %{--<li class="no-margin productPopItem "><a href="product-details.html"><img--}%
                %{--class="img-responsive" src="images/site/g4.jpg" alt="img"></a> <a--}%
                %{--class="text-center productInfo alpha90"--}%
                %{--href="product-details.html">Eodem modo typi <br>--}%
                %{--<span>$60</span></a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-3  col-sm-3 col-md-3 col-xs-6">--}%
                %{--<li class="no-margin productPopItem relative"><a href="product-details.html"><img--}%
                %{--class="img-responsive" src="images/site/g5.jpg" alt="img"></a> <a--}%
                %{--class="text-center productInfo alpha90"--}%
                %{--href="product-details.html">Eodem modo typi <br>--}%
                %{--<span>$60</span></a></li>--}%
                %{--</ul>--}%
                %{--</li>--}%
                %{--</ul>--}%
                %{--</li>--}%
                %{--<li class="dropdown megamenu-fullwidth"><a data-toggle="dropdown" class="dropdown-toggle"--}%
                %{--href="#">PAGES <b class="caret"></b></a>--}%
                %{--<ul class="dropdown-menu">--}%
                %{--<li class="megamenu-content">--}%

                %{--<h3 class="promo-1 no-margin hidden-xs">40+ HTML PAGES || AVAILABLE ONLY AT WRAP BOOTSTRAP</h3>--}%

                %{--<h3 class="promo-1sub hidden-xs">Complete Parallax E-Commerce Boostrap Template, Responsive on any Device, 10+ color Theme + Parallax Effect</h3>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2 unstyled">--}%
                %{--<li class="no-border">--}%
                %{--<p><strong>Home Pages</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="index.html">Home Version 1</a></li>--}%
                %{--<li><a href="index2.html">Home Version 2</a></li>--}%
                %{--<li><a href="index3.html">Home Version 3 (BOXES)</a></li>--}%
                %{--<li><a href="index4.html">Home Version 4 (LOOK 2)</a></li>--}%
                %{--<li><a href="index5.html">Home Version 5 (LOOK 3)</a></li>--}%
                %{--<li><a href="index6.html">Home Version 6 (STORY)</a></li>--}%
                %{--<li><a href="index-header2.html">Header Version 2</a></li>--}%
                %{--<li><a href="index-header3.html">Header Version 3</a></li>--}%
                %{--<li><a href="index-static-search.html">Header Version 4<br>--}%
                %{--( Static Search Form)</a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2 unstyled">--}%
                %{--<li class="no-border">--}%
                %{--<p><strong>Featured Pages</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="category.html">Category</a></li>--}%
                %{--<li><a href="category2.html">Category Style 2 [Parallax]</a></li>--}%
                %{--<li><a href="sub-category.html">Sub Category</a></li>--}%
                %{--<li><a href="category-list.html">Category List View</a></li>--}%
                %{--<li><a href="category-product-hover.html">Category [Product Hover]</a></li>--}%
                %{--<li><a href="category-product-slide.html">Category [Product Slide]</a></li>--}%
                %{--<li><a href="product-details.html">Product Details Version 1</a></li>--}%
                %{--<li><a href="product-details-style2.html">Product Details Version 2</a></li>--}%
                %{--<li><a href="product-details-style3.html">Product Details Version 3 (Custom Thumbnail Position)</a>--}%
                %{--</li>--}%
                %{--<li><a href="product-details-style4.html">Product Details Version 4 (Zoom + Litebox )</a>--}%
                %{--</li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2 unstyled">--}%
                %{--<li class="no-border">--}%
                %{--<p><strong>&nbsp;</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="cart.html">Cart</a></li>--}%
                %{--<li><a href="blog.html">Blog</a></li>--}%
                %{--<li><a href="blog-details.html">Blog Details</a></li>--}%
                %{--<li><a href="contact-us.html">Contact us</a></li>--}%
                %{--<li><a href="contact-us-2.html">Contact us 2 (No Fixed Map)</a></li>--}%
                %{--<li><a href="terms-conditions.html">Terms &amp; Conditions</a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2 unstyled">--}%
                %{--<li class="no-border">--}%
                %{--<p><strong>Checkout</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="checkout-0.html">Checkout Before</a></li>--}%
                %{--<li><a href="checkout-1.html">checkout step 1</a></li>--}%
                %{--<li><a href="checkout-2.html">checkout step 2</a></li>--}%
                %{--<li><a href="checkout-3.html">checkout step 3</a></li>--}%
                %{--<li><a href="checkout-4.html">checkout step 4</a></li>--}%
                %{--<li><a href="checkout-5.html">checkout step 5</a></li>--}%
                %{--<li><a href="thanks-for-order.html">Thanks for order</a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2 unstyled">--}%
                %{--<li class="no-border">--}%
                %{--<p><strong>User Account</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="account-1.html">Account Login</a></li>--}%
                %{--<li><a href="account.html">My Account</a></li>--}%
                %{--<li><a href="my-address.html">My Address</a></li>--}%
                %{--<li><a href="user-information.html">User information</a></li>--}%
                %{--<li><a href="wishlist.html">Wish List</a></li>--}%
                %{--<li><a href="order-list.html">Order list</a></li>--}%
                %{--<li><a href="order-status.html">Order Status</a></li>--}%
                %{--<li><a href="forgot-password.html">Forgot Password</a></li>--}%
                %{--</ul>--}%
                %{--<ul class="col-lg-2  col-sm-2 col-md-2 unstyled">--}%
                %{--<li class="no-border">--}%
                %{--<p><strong>&nbsp;</strong></p>--}%
                %{--</li>--}%
                %{--<li><a href="single-product-modal.html">Single Product Details Modal</a></li>--}%
                %{--<li><a href="single-subscribe-modal.html">Single Subscribe Modal</a></li>--}%
                %{--<li><a href="error-page.html">Error Page</a></li>--}%
                %{--<li><a href="blank-page.html">Blank Page</a></li>--}%
                %{--<li><a href="form.html">Basic Form Element</a></li>--}%
                %{--</ul>--}%
                %{--</li>--}%
                %{--</ul>--}%
                %{--</li>--}%

          <li role="presentation"  style="margin-left:300px">
            <sec:ifLoggedIn>
                    <form method="post" action="${createLink(controller: "logout")}">
                        <g:submitButton name="Log Out" class="btn btn-primary" value="LOG OUT"
                                        style="border:hidden;color: white;font-size: 15px;background: transparent"
                                        id="log_out_btn"/>
                    </form>
            </sec:ifLoggedIn>
          </li>
          </ul>
        </div>

    </div>
</div>
<g:layoutBody/>
%{--<div class="container main-container">--}%

%{--<div class="row featuredPostContainer globalPadding style2">--}%
%{--<h3 class="section-title style2 text-center"><span>NEW ARRIVALS</span></h3>--}%

%{--<div id="productslider" class="owl-carousel owl-theme">--}%
%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/34.jpg" alt="img"--}%
%{--class="img-responsive"></a>--}%

%{--<div class="promotion"><span class="new-product">NEW</span> <span--}%
%{--class="discount">15% OFF</span></div>--}%
%{--</div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">consectetuer adipiscing</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/30.jpg" alt="img"--}%
%{--class="img-responsive"></a>--}%

%{--<div class="promotion"><span class="discount">15% OFF</span></div>--}%
%{--</div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">luptatum zzril delenit</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/36.jpg" alt="img"--}%
%{--class="img-responsive"></a>--}%

%{--<div class="promotion"><span class="new-product">NEW</span></div>--}%
%{--</div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">eleifend option</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/9.jpg" alt="img"--}%
%{--class="img-responsive"></a></div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">mutationem consuetudium</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/12.jpg" alt="img"--}%
%{--class="img-responsive"></a></div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">sequitur mutationem</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/13.jpg" alt="img"--}%
%{--class="img-responsive"></a></div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">consuetudium lectorum.</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/21.jpg" alt="img"--}%
%{--class="img-responsive"></a></div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">parum claram</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/24.jpg" alt="img"--}%
%{--class="img-responsive"></a></div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">duis dolore</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="item">--}%
%{--<div class="product">--}%
%{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
%{--data-placement="left">--}%
%{--<i class="glyphicon glyphicon-heart"></i>--}%
%{--</a>--}%

%{--<div class="image">--}%
%{--<div class="quickview">--}%
%{--<a title="Quick View" class="btn btn-xs  btn-quickview" data-target="#product-details-modal"--}%
%{--data-toggle="modal">Quick View</a>--}%
%{--</div><a href="product-details.html"><img src="images/product/15.jpg" alt="img"--}%
%{--class="img-responsive"></a></div>--}%

%{--<div class="description">--}%
%{--<h4><a href="product-details.html">feugait nulla facilisi</a></h4>--}%

%{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
%{--<span class="size">XL / XXL / S</span></div>--}%

%{--<div class="price"><span>$25</span></div>--}%

%{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
%{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%

%{--</div>--}%

%{--</div>--}%

%{--<div class="parallax-section parallax-image-1">--}%
    %{--<div class="container">--}%
        %{--<div class="row ">--}%
            %{--<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">--}%
                %{--<div class="parallax-content clearfix">--}%
                    %{--<h1 class="parallaxPrce">$200</h1>--}%

                    %{--<h2 class="uppercase">FREE INTERNATIONAL SHIPPING! Get Free Shipping Coupons</h2>--}%

                    %{--<h3>Energistically develop parallel mindshare rather than premier deliverables.</h3>--}%

                    %{--<div style="clear:both"></div>--}%
                    %{--<a class="btn btn-discover "><i class="fa fa-shopping-cart"></i> SHOP NOW</a></div>--}%
            %{--</div>--}%
        %{--</div>--}%

    %{--</div>--}%

%{--</div>--}%

%{--<div class="container main-container">--}%

    %{--<div class="morePost row featuredPostContainer style2 globalPaddingTop ">--}%

        %{--<h3 class="section-title style2 text-center"><span>NEW FEATURES</span></h3>--}%

        %{--<div class="container">--}%
            %{--<div class="row xsResponse categoryProduct">--}%
                %{--<div class="item itemauto col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="imageHover">--}%
                            %{--<div class="promotion"><span class="discount">15% OFF</span></div>--}%

                            %{--<div id="carousel-id-1" class="carousel slide" data-ride="carousel" data-interval="0">--}%

                                %{--<ol class="carousel-indicators">--}%
                                    %{--<li data-target="#carousel-id-1" data-slide-to="0" class="active"></li>--}%
                                    %{--<li data-target="#carousel-id-1" data-slide-to="1"></li>--}%
                                    %{--<li data-target="#carousel-id-1" data-slide-to="2"></li>--}%
                                %{--</ol>--}%

                                %{--<div class="carousel-inner" role="listbox">--}%
                                    %{--<div class="item active"><a href="product-details.html"><img--}%
                                            %{--src="images/product/5.jpg" alt="img" class="img-responsive "></a></div>--}%

                                    %{--<div class="item"><a href="product-details.html"><img src="images/product/21.jpg"--}%
                                                                                          %{--alt="img"--}%
                                                                                          %{--class="img-responsive "></a>--}%
                                    %{--</div>--}%

                                    %{--<div class="item"><a href="product-details.html"><img src="images/product/30.jpg"--}%
                                                                                          %{--alt="img"--}%
                                                                                          %{--class="img-responsive "></a>--}%
                                    %{--</div>--}%
                                %{--</div>--}%

                                %{--<a class="left carousel-control" href="#carousel-id-1" role="button" data-slide="prev">--}%
                                    %{--<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>--}%
                                    %{--<span class="sr-only">Previous</span>--}%
                                %{--</a>--}%
                                %{--<a class="right carousel-control" href="#carousel-id-1" role="button" data-slide="next">--}%
                                    %{--<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>--}%
                                    %{--<span class="sr-only">Next</span>--}%
                                %{--</a>--}%
                            %{--</div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">Product Slider</a></h4>--}%

                            %{--<div class="grid-description">--}%
                                %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--</div>--}%

                            %{--<div class="list-description">--}%
                                %{--<p>Sed sed rutrum purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque risus lacus, iaculis in ante vitae, viverra hendrerit ante. Aliquam vel fermentum elit. Morbi rhoncus, neque in vulputate facilisis, leo tortor sollicitudin odio, quis pellentesque lorem nisi quis enim. In dolor mi, hendrerit at blandit vulputate, congue a purus. Sed eget turpis sit amet orci euismod accumsan. Praesent sit amet placerat elit.</p>--}%
                            %{--</div>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item itemauto col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="imageHover">--}%
                            %{--<div id="carousel-id-2" class="carousel slide carousel-fade" data-ride="carousel">--}%

                                %{--<ol class="carousel-indicators">--}%
                                    %{--<li data-target="#carousel-id-2" data-slide-to="0" class="active"></li>--}%
                                    %{--<li data-target="#carousel-id-2" data-slide-to="1"></li>--}%
                                    %{--<li data-target="#carousel-id-2" data-slide-to="2"></li>--}%
                                %{--</ol>--}%

                                %{--<div class="carousel-inner" role="listbox">--}%
                                    %{--<div class="item active"><a href="product-details.html"><img--}%
                                            %{--src="images/product/22.jpg" alt="img" class="img-responsive "></a></div>--}%

                                    %{--<div class="item"><a href="product-details.html"><img src="images/product/5.jpg"--}%
                                                                                          %{--alt="img"--}%
                                                                                          %{--class="img-responsive "></a>--}%
                                    %{--</div>--}%

                                    %{--<div class="item"><a href="product-details.html"><img src="images/product/18.jpg"--}%
                                                                                          %{--alt="img"--}%
                                                                                          %{--class="img-responsive "></a>--}%
                                    %{--</div>--}%
                                %{--</div>--}%

                                %{--<a class="left carousel-control" href="#carousel-id-2" role="button" data-slide="prev">--}%
                                    %{--<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>--}%
                                    %{--<span class="sr-only">Previous</span>--}%
                                %{--</a>--}%
                                %{--<a class="right carousel-control" href="#carousel-id-2" role="button" data-slide="next">--}%
                                    %{--<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>--}%
                                    %{--<span class="sr-only">Next</span>--}%
                                %{--</a>--}%
                            %{--</div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">Slider FadeIn</a></h4>--}%

                            %{--<div class="grid-description">--}%
                                %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--</div>--}%

                            %{--<div class="list-description">--}%
                                %{--<p>Sed sed rutrum purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque risus lacus, iaculis in ante vitae, viverra hendrerit ante. Aliquam vel fermentum elit. Morbi rhoncus, neque in vulputate facilisis, leo tortor sollicitudin odio, quis pellentesque lorem nisi quis enim. In dolor mi, hendrerit at blandit vulputate, congue a purus. Sed eget turpis sit amet orci euismod accumsan. Praesent sit amet placerat elit.</p>--}%
                            %{--</div>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item itemauto  col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="imageHover">--}%
                            %{--<a href="product-details.html">--}%
                                %{--<img src="images/product/12.jpg" alt="img" class="img-responsive primaryImage">--}%
                                %{--<img src="images/product/21.jpg" alt="img" class="img-responsive secondaryImage"></a>--}%

                            %{--<div class="promotion"><span class="discount">15% OFF</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">Hover FadeIn</a></h4>--}%

                            %{--<div class="grid-description">--}%
                                %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--</div>--}%

                            %{--<div class="list-description">--}%
                                %{--<p>Sed sed rutrum purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque risus lacus, iaculis in ante vitae, viverra hendrerit ante. Aliquam vel fermentum elit. Morbi rhoncus, neque in vulputate facilisis, leo tortor sollicitudin odio, quis pellentesque lorem nisi quis enim. In dolor mi, hendrerit at blandit vulputate, congue a purus. Sed eget turpis sit amet orci euismod accumsan. Praesent sit amet placerat elit.</p>--}%
                            %{--</div>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item itemauto  col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="imageHover imageHoverFlip">--}%
                            %{--<a href="product-details.html"><img src="images/product/7.jpg" alt="img"--}%
                                                                %{--class="img-responsive primaryImage">--}%
                                %{--<img src="images/product/13.jpg" alt="img" class="img-responsive secondaryImage"></a>--}%

                            %{--<div class="promotion"><span class="discount">15% OFF</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">Hover Flip</a></h4>--}%

                            %{--<div class="grid-description">--}%
                                %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--</div>--}%

                            %{--<div class="list-description">--}%
                                %{--<p>Sed sed rutrum purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque risus lacus, iaculis in ante vitae, viverra hendrerit ante. Aliquam vel fermentum elit. Morbi rhoncus, neque in vulputate facilisis, leo tortor sollicitudin odio, quis pellentesque lorem nisi quis enim. In dolor mi, hendrerit at blandit vulputate, congue a purus. Sed eget turpis sit amet orci euismod accumsan. Praesent sit amet placerat elit.</p>--}%
                            %{--</div>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%


    %{--<div class="morePost row featuredPostContainer style2 globalPaddingTop ">--}%
        %{--<h3 class="section-title style2 text-center"><span>FEATURES PRODUCT</span></h3>--}%

        %{--<div class="container">--}%
            %{--<div class="row xsResponse">--}%
                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/30.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a>--}%

                            %{--<div class="promotion"><span class="new-product">NEW</span> <span--}%
                                    %{--class="discount">15% OFF</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">aliquam erat volutpat</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span> <span class="old-price">$75</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/31.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a>--}%

                            %{--<div class="promotion"><span class="discount">15% OFF</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">ullamcorper suscipit lobortis</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/34.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a>--}%

                            %{--<div class="promotion"><span class="new-product">NEW</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">demonstraverunt lectores</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/12.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a></div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">humanitatis per</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/33.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a></div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">Eodem modo typi</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/10.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a></div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">sequitur mutationem</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/37.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a></div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">consuetudium lectorum.</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/35.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a></div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">parum claram</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span> <span class="old-price">$75</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/13.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a></div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">duis dolore</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/21.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a>--}%

                            %{--<div class="promotion"><span class="new-product">NEW</span> <span--}%
                                    %{--class="discount">15% OFF</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">aliquam erat volutpat</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/14.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a>--}%

                            %{--<div class="promotion"><span class="discount">15% OFF</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">ullamcorper suscipit lobortis</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

                %{--<div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">--}%
                    %{--<div class="product">--}%
                        %{--<a class="add-fav tooltipHere" data-toggle="tooltip" data-original-title="Add to Wishlist"--}%
                           %{--data-placement="left">--}%
                            %{--<i class="glyphicon glyphicon-heart"></i>--}%
                        %{--</a>--}%

                        %{--<div class="image">--}%
                            %{--<div class="quickview">--}%
                                %{--<a title="Quick View" class="btn btn-xs  btn-quickview"--}%
                                   %{--data-target="#product-details-modal" data-toggle="modal">Quick View</a>--}%
                            %{--</div><a href="product-details.html"><img src="images/product/17.jpg" alt="img"--}%
                                                                      %{--class="img-responsive"></a>--}%

                            %{--<div class="promotion"><span class="new-product">NEW</span></div>--}%
                        %{--</div>--}%

                        %{--<div class="description">--}%
                            %{--<h4><a href="product-details.html">demonstraverunt lectores</a></h4>--}%

                            %{--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>--}%
                            %{--<span class="size">XL / XXL / S</span></div>--}%

                        %{--<div class="price"><span>$25</span></div>--}%

                        %{--<div class="action-control"><a class="btn btn-primary"><span class="add2cart"><i--}%
                                %{--class="glyphicon glyphicon-shopping-cart"></i> Add to cart</span></a></div>--}%
                    %{--</div>--}%
                %{--</div>--}%

            %{--</div>--}%

            %{--<div class="row">--}%
                %{--<div class="load-more-block text-center"><a class="btn btn-thin" href="#"><i--}%
                        %{--class="fa fa-plus-sign">+</i> load more products</a></div>--}%
            %{--</div>--}%
        %{--</div>--}%

    %{--</div>--}%

    %{--<hr class="no-margin-top">--}%

    %{--<div class="width100 section-block ">--}%
        %{--<div class="row featureImg">--}%
            %{--<div class="col-md-3 col-sm-3 col-xs-6"><a href="category.html"><img src="images/site/new-collection-1.jpg"--}%
                                                                                 %{--class="img-responsive" alt="img"></a>--}%
            %{--</div>--}%

            %{--<div class="col-md-3 col-sm-3 col-xs-6"><a href="category.html"><img src="images/site/new-collection-2.jpg"--}%
                                                                                 %{--class="img-responsive" alt="img"></a>--}%
            %{--</div>--}%

            %{--<div class="col-md-3 col-sm-3 col-xs-6"><a href="category.html"><img src="images/site/new-collection-3.jpg"--}%
                                                                                 %{--class="img-responsive" alt="img"></a>--}%
            %{--</div>--}%

            %{--<div class="col-md-3 col-sm-3 col-xs-6"><a href="category.html"><img src="images/site/new-collection-4.jpg"--}%
                                                                                 %{--class="img-responsive" alt="img"></a>--}%
            %{--</div>--}%
        %{--</div>--}%

    %{--</div>--}%

    %{--<div class="width100 section-block">--}%
        %{--<h3 class="section-title"><span>BRAND</span> <a id="nextBrand" class="link pull-right carousel-nav"><i--}%
                %{--class="fa fa-angle-right"></i></a> <a id="prevBrand" class="link pull-right carousel-nav"><i--}%
                %{--class="fa fa-angle-left"></i></a></h3>--}%

        %{--<div class="row">--}%
            %{--<div class="col-lg-12">--}%
                %{--<ul class="no-margin brand-carousel owl-carousel owl-theme">--}%
                    %{--<li><a><img src="images/brand/1.gif" alt="img"></a></li>--}%
                    %{--<li><img src="images/brand/2.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/3.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/4.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/5.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/6.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/7.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/8.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/1.gif" alt="img"></li>--}%
                    %{--<li><img src="images/brand/2.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/3.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/4.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/5.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/6.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/7.png" alt="img"></li>--}%
                    %{--<li><img src="images/brand/8.png" alt="img"></li>--}%
                %{--</ul>--}%
            %{--</div>--}%
        %{--</div>--}%

    %{--</div>--}%

%{--</div>--}%

<div class="parallax-section parallax-image-2"  style="margin-top: 100px">
    <div class="w100 parallax-section-overley">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="parallax-content clearfix">
                        <h1 class="xlarge">Trusted Seller 500+</h1>
                        <h5 class="parallaxSubtitle">Lorem ipsum dolor sit amet consectetuer</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


%{--<div class="modal fade" id="product-details-modal" tabindex="-1" role="dialog" aria-hidden="true">--}%
    %{--<div class="modal-dialog">--}%
        %{--<div class="modal-content">--}%
            %{--<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>--}%

            %{--<div class="col-lg-5 col-md-5 col-sm-5  col-xs-12">--}%

                %{--<div class="main-image  col-lg-12 no-padding style3">--}%
                    %{--<a class="product-largeimg-link" href="product-details.html"><img src="images/zoom/zoom1.jpg"--}%
                                                                                      %{--class="img-responsive product-largeimg"--}%
                                                                                      %{--alt="img">--}%
                    %{--</a>--}%
                %{--</div>--}%

                %{--<div class="modal-product-thumb">--}%
                    %{--<a class="thumbLink selected"><img data-large="images/zoom/zoom1.jpg" alt="img"--}%
                                                       %{--class="img-responsive" src="images/zoom/zoom1.jpg">--}%
                    %{--</a>--}%
                    %{--<a class="thumbLink"><img data-large="images/zoom/zoom2.jpg" alt="img" class="img-responsive"--}%
                                              %{--src="images/zoom/zoom2.jpg">--}%
                    %{--</a>--}%
                    %{--<a class="thumbLink"><img data-large="images/zoom/zoom3.jpg" alt="img" class="img-responsive"--}%
                                              %{--src="images/zoom/zoom3.jpg">--}%
                    %{--</a>--}%
                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 modal-details no-padding">--}%
                %{--<div class="modal-details-inner">--}%
                    %{--<h1 class="product-title">Lorem ipsum dolor sit amet</h1>--}%

                    %{--<h3 class="product-code">Product Code : DEN1098</h3>--}%

                    %{--<div class="product-price"><span class="price-sales">$70</span> <span--}%
                            %{--class="price-standard">$95</span></div>--}%

                    %{--<div class="details-description">--}%
                        %{--<p>In scelerisque libero ut elit porttitor commodo Suspendisse laoreet magna.</p>--}%
                    %{--</div>--}%

                    %{--<div class="color-details"><span class="selected-color"><strong>COLOR</strong></span>--}%
                        %{--<ul class="swatches Color">--}%
                            %{--<li class="selected">--}%
                                %{--<a style="background-color:#f1f40e"></a>--}%
                            %{--</li>--}%
                            %{--<li>--}%
                                %{--<a style="background-color:#adadad"></a>--}%
                            %{--</li>--}%
                            %{--<li>--}%
                                %{--<a style="background-color:#4EC67F"></a>--}%
                            %{--</li>--}%
                        %{--</ul>--}%
                    %{--</div>--}%

                    %{--<div class="productFilter productFilterLook2">--}%
                        %{--<div class="filterBox">--}%
                            %{--<select>--}%
                                %{--<option value="strawberries" selected>Quantity</option>--}%
                                %{--<option value="mango">1</option>--}%
                                %{--<option value="bananas">2</option>--}%
                                %{--<option value="watermelon">3</option>--}%
                                %{--<option value="grapes">4</option>--}%
                                %{--<option value="oranges">5</option>--}%
                                %{--<option value="pineapple">6</option>--}%
                                %{--<option value="peaches">7</option>--}%
                                %{--<option value="cherries">8</option>--}%
                            %{--</select>--}%
                        %{--</div>--}%

                        %{--<div class="filterBox">--}%
                            %{--<select>--}%
                                %{--<option value="strawberries" selected>Size</option>--}%
                                %{--<option value="mango">XL</option>--}%
                                %{--<option value="bananas">XXL</option>--}%
                                %{--<option value="watermelon">M</option>--}%
                                %{--<option value="apples">L</option>--}%
                                %{--<option value="apples">S</option>--}%
                            %{--</select>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<div class="cart-actions">--}%
                        %{--<div class="addto">--}%
                            %{--<button onclick="productAddToCartForm.submit(this);" class="button btn-cart cart first"--}%
                                    %{--title="Add to Cart" type="button">Add to Cart</button>--}%
                            %{--<a class="link-wishlist wishlist">Add to Wishlist</a></div>--}%
                    %{--</div>--}%

                    %{--<div class="product-share clearfix">--}%
                        %{--<p>SHARE</p>--}%

                        %{--<div class="socialIcon">--}%
                            %{--<a href="#"><i class="fa fa-facebook"></i>--}%
                            %{--</a>--}%
                            %{--<a href="#"><i class="fa fa-twitter"></i>--}%
                            %{--</a>--}%
                            %{--<a href="#"><i class="fa fa-google-plus"></i>--}%
                            %{--</a>--}%
                            %{--<a href="#"><i class="fa fa-pinterest"></i>--}%
                            %{--</a>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="clear"></div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%

<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-3 col-sm-4 col-xs-6">
                    <h3>Support</h3>
                    <ul>
                        <li class="supportLi">
                            <p>Lorem ipsum dolor sit amet, consectetur</p>
                            <h4><a class="inline" href="callto:+88016000000"><strong><i
                                    class="fa fa-phone"></i> 88 0160 000 000</strong></a></h4>
                            <h4><a class="inline"
                                   href="/cdn-cgi/l/email-protection#375f525b477743445f58474052551954585a"><i
                                        class="fa fa-envelope-o"></i> <span class="__cf_email__"
                                                                            data-cfemail="ea828f869aaa9e9982859a9d8f88c4898587">[email&#160;protected]</span><script
                                        cf-hash='f9e31' type="text/javascript">
                                    /* <![CDATA[ */
                                    !function () {
                                        try {
                                            var t = "currentScript"in document ? document.currentScript : function () {
                                                for (var t = document.getElementsByTagName("script"), e = t.length; e--;)if (t[e].getAttribute("cf-hash"))return t[e]
                                            }();
                                            if (t && t.previousSibling) {
                                                var e, r, n, i, c = t.previousSibling, a = c.getAttribute("data-cfemail");
                                                if (a) {
                                                    for (e = "", r = parseInt(a.substr(0, 2), 16), n = 2; a.length - n; n += 2)i = parseInt(a.substr(n, 2), 16) ^ r, e += String.fromCharCode(i);
                                                    e = document.createTextNode(e), c.parentNode.replaceChild(e, c)
                                                }
                                            }
                                        } catch (u) {
                                        }
                                    }();
                                    /* ]]> */</script></a></h4>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>Shop</h3>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="category.html">Category</a></li>
                        <li><a href="category2.html">Category Style 2 [Parallax]</a></li>
                        <li><a href="sub-category.html">Sub Category</a></li>
                    </ul>
                </div>

                <div style="clear:both" class="hide visible-xs"></div>

                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>Information</h3>
                    <ul>
                        <li><a href="product-details.html">Product Details</a></li>
                        <li><a href="product-details-style2.html">Product Details Version 2</a></li>
                        <li><a href="cart.html">Cart</a></li>
                        <li><a href="about-us.html">About us</a></li>
                        <li><a href="about-us-2.html">About us 2</a></li>
                        <li><a href="contact-us.html">Contact us</a></li>
                        <li><a href="contact-us-2.html">Contact us 2</a></li>
                        <li><a href="terms-conditions.html">Terms &amp; Conditions</a></li>
                    </ul>
                </div>

                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>My Account</h3>
                    <ul>
                        <li><a href="account-1.html">Account Login</a></li>
                        <li><a href="account.html">My Account</a></li>
                        <li><a href="my-address.html">My Address</a></li>
                        <li><a href="wishlist.html">Wish List</a></li>
                        <li><a href="order-list.html">Order list</a></li>
                        <li><a href="order-status.html">Order Status</a></li>
                    </ul>
                </div>

                <div style="clear:both" class="hide visible-xs"></div>

                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3>Stay in touch</h3>
                    <ul>
                        <li>
                            <div class="input-append newsLatterBox text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button">Subscribe <i
                                        class="fa fa-long-arrow-right"></i></button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li><a href="http://facebook.com"><i class=" fa fa-facebook">&nbsp;</i></a></li>
                        <li><a href="http://twitter.com"><i class="fa fa-twitter">&nbsp;</i></a></li>
                        <li><a href="https://plus.google.com"><i class="fa fa-google-plus">&nbsp;</i></a></li>
                        <li><a href="http://youtube.com"><i class="fa fa-pinterest">&nbsp;</i></a></li>
                        <li><a href="http://youtube.com"><i class="fa fa-youtube">&nbsp;</i></a></li>
                    </ul>
                </div>
            </div>

        </div>

    </div>

    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left">&copy; TSHOP 2014. All right reserved.</p>

            <div class="pull-right paymentMethodImg"><img height="30" class="pull-right"
                                                          src="images/site/payment/master_card.png" alt="img"> <img
                    height="30" class="pull-right" src="images/site/payment/visa_card.png" alt="img"><img height="30"
                                                                                                          class="pull-right"
                                                                                                          src="images/site/payment/paypal.png"
                                                                                                          alt="img"> <img
                    height="30" class="pull-right" src="images/site/payment/american_express_card.png" alt="img"> <img
                    height="30" class="pull-right" src="images/site/payment/discover_network_card.png" alt="img"> <img
                    height="30" class="pull-right" src="images/site/payment/google_wallet.png" alt="img">
            </div>
        </div>
    </div>

</footer>

%{--<div class="modal fade hide" id="modalAds" role="dialog">--}%
%{--<div class="modal-dialog  modal-bg-1">--}%
%{--<div class="modal-body-content">--}%
%{--<a class="close" data-dismiss="modal">×</a>--}%

%{--<div class="modal-body">--}%
%{--<div class="col-lg-6 col-sm-8 col-xs-8">--}%
%{--<h3>enter your <br>email to receive</h3>--}%

%{--<p class="discountLg">10% OFF</p>--}%

%{--<p>We invite you to subscribe to our newsletter and receive 10% discount.--}%
%{--</p>--}%

%{--<div class="clearfx"><form id="newsletter" class="newsletter">--}%
%{--<input type="text" id="subscribe" name="s" placeholder="Enter email">--}%
%{--<button class="subscribe-btn">Subscribe</button>--}%
%{--</form></div>--}%

%{--<p><a href="category.html" class="link shoplink">SHOP NOW <i class="fa fa-caret-right"></i></a></p>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%


<script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}">
</script> <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<script>
    // this script required for subscribe modal
    $(window).load(function () {
        // full load
        $('#modalAds').modal('show');
        $('#modalAds').removeClass('hide');
    });

</script>

<script src="${resource(dir: 'js/theme-js', file: 'jquery.cycle2.min.js')}"></script>

<script src="${resource(dir: 'js/theme-js', file: 'jquery.easing.1.3.js')}"></script>

<script type="text/javascript" src="${resource(dir: 'js/theme-js', file: 'jquery.parallax-1.1.js')}"></script>

<script type="text/javascript"
        src="${resource(dir: 'js/theme-js/helper-plugins', file: 'jquery.mousewheel.min.js')}"></script>

<script type="text/javascript" src="${resource(dir: 'js/theme-js', file: 'jquery.mCustomScrollbar.js')}"></script>

<script type="text/javascript"
        src="${resource(dir: 'js/theme-js/ion-checkRadio', file: 'ion.checkRadio.min.js')}"></script>

<script src="${resource(dir: 'js/theme-js', file: 'grids.js')}"></script>
<script src="${resource(dir: 'js/theme-js', file: 'owl.carousel.min.js')}"></script>

<script src="${resource(dir: 'js/theme-js', file: 'jquery.minimalect.min.js')}"></script>

<script src="${resource(dir: 'js/theme-js', file: 'bootstrap.touchspin.js')}"></script>

<script src="${resource(dir: 'js/theme-js', file: 'home.js')}"></script>

<script src="${resource(dir: 'js/theme-js', file: 'script.js')}"></script>
<script>

</script>
<script type="text/javascript">
    /* <![CDATA[ */
    (function () {
        try {
            var s, a, i, j, r, c, l = document.getElementsByTagName("a"), t = document.createElement("textarea");
            for (i = 0; l.length - i; i++) {
                try {
                    a = l[i].getAttribute("href");
                    if (a && a.indexOf("/cdn-cgi/l/email-protection") > -1 && (a.length > 28)) {
                        s = '';
                        j = 27 + 1 + a.indexOf("/cdn-cgi/l/email-protection");
                        if (a.length > j) {
                            r = parseInt(a.substr(j, 2), 16);
                            for (j += 2; a.length > j && a.substr(j, 1) != 'X'; j += 2) {
                                c = parseInt(a.substr(j, 2), 16) ^ r;
                                s += String.fromCharCode(c);
                            }
                            j += 1;
                            s += a.substr(j, a.length - j);
                        }
                        t.innerHTML = s.replace(/</g, "&lt;").replace(/>/g, "&gt;");
                        l[i].setAttribute("href", "mailto:" + t.value);
                    }
                } catch (e) {
                }
            }
        } catch (e) {
        }
    })();
    /* ]]> */
</script>
</body>

</html>