<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <!-- header -->
    <header>
        <div class="header-top-wrapper-2 border-bottom-2">
            <div class="header-info-wrapper pl-200 pr-200">
                <div class="header-contact-info header-contact-info2 ">
                    <ul>
                        <li><i class="pe-7s-call"></i> +011 2231 1233</li>
                        <li><i class="pe-7s-mail"></i> <a
                                href="#">company@example.info</a></li>
                    </ul>
                </div>
                <div class="electronics-login-register">
                    <ul>
                        <li class="border-none"><a href="dang-nhap"><i class="pe-7s-users"></i>Tài
                            khoản của bạn</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="header-bottom ptb-40 clearfix">
            <div class="header-bottom-wrapper pr-200 pl-200">
                <div class="logo-3">
                    <a href="trang-chu">
                        <img src="../../resources/assets/img/logo/logo-2.png" alt="">
                    </a>
                </div>
                <div class="categories-search-wrapper categories-search-wrapper2">
                    <div class="categories-wrapper">
                        <form action="search" method="post" style="margin: 0">
                            <input  name="txtSearch"
                                    placeholder="Tìm kiếm sản phẩm mong muốn..."
                                   type="text"
                            style="width: 500px; margin: 0">
                            <button type="submit"> Tìm kiếm </button>
                        </form>
                    </div>
                </div>
                <div class="header-cart-3" style="margin: 0">
                    <a href="#">
                        <i class="ti-shopping-cart" style="font-size: 40px"></i>
                        <span style="font-size: 14px;height: 30px;
                                line-height: 28px; width: 30px;">
                            02
                        </span>
                    </a>
                    <ul class="cart-dropdown">
                        <li class="single-product-cart">
                            <div class="cart-img">
                                <a href="#"><img src="assets/img/cart/1.jpg" alt=""></a>
                            </div>
                            <div class="cart-title">
                                <h5><a href="#"> Bits Headphone</a></h5>
                                <h6><a href="#">Black</a></h6>
                                <span>$80.00 x 1</span>
                            </div>
                            <div class="cart-delete">
                                <a href="#"><i class="ti-trash"></i></a>
                            </div>
                        </li>
                        <li class="single-product-cart">
                            <div class="cart-img">
                                <a href="#"><img src="assets/img/cart/2.jpg" alt=""></a>
                            </div>
                            <div class="cart-title">
                                <h5><a href="#"> Bits Headphone</a></h5>
                                <h6><a href="#">Black</a></h6>
                                <span>$80.00 x 1</span>
                            </div>
                            <div class="cart-delete">
                                <a href="#"><i class="ti-trash"></i></a>
                            </div>
                        </li>
                        <li class="single-product-cart">
                            <div class="cart-img">
                                <a href="#"><img src="assets/img/cart/3.jpg" alt=""></a>
                            </div>
                            <div class="cart-title">
                                <h5><a href="#"> Bits Headphone</a></h5>
                                <h6><a href="#">Black</a></h6>
                                <span>$80.00 x 1</span>
                            </div>
                            <div class="cart-delete">
                                <a href="#"><i class="ti-trash"></i></a>
                            </div>
                        </li>
                        <li class="cart-space">
                            <div class="cart-sub">
                                <h4>Tổng cộng</h4>
                            </div>
                            <div class="cart-price">
                                <h4>$240.00</h4>
                            </div>
                        </li>
                        <li class="cart-btn-wrapper">
                            <a class="cart-btn btn-hover" href="#">Giỏ hàng</a>
                            <a class="cart-btn btn-hover" href="#">Thanh
                                toán</a>
                        </li>
                    </ul>
                </div>
                <div class="mobile-menu-area mobile-menu-none-block electro-2-menu">
                    <div class="mobile-menu">
                        <nav id="mobile-menu-active">
                            <ul class="menu-overflow">
                                <li><a href="#">HOME</a>
                                    <ul>
                                        <li><a href="index.html">Fashion</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">pages</a>
                                    <ul>
                                        <li><a href="about-us.html">about us</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">shop</a>
                                    <ul>
                                        <li><a href="shop-grid-2-col.html"> grid 2 column</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">BLOG</a>
                                    <ul>
                                        <li><a href="blog.html">blog 3 colunm</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html"> Contact  </a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header end -->
</body>
</html>
