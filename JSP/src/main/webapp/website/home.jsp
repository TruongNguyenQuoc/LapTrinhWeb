<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url
                                value="/resources/assets/img/favicon.png"/>">

    <!-- all css here -->
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/magnific-popup.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/themify-icons.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/pe-icon-7-stroke.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/icofont.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/meanmenu.min.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/bundle.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/style.css"/>">
    <link rel="stylesheet" href="<c:url
                                value="/resources/assets/css/responsive.css"/>"/>
    <script
            src="<c:url value="/resources/assets/js/vendor/modernizr-3.11.7.min.js"/>"></script>

</head>
<body>

<jsp:include page="/website/component/header.jsp"/>

<jsp:include page="/website/component/banner.jsp"/>

<!-- Banner -->
<div class="electronic-banner-area">
    <div class="custom-row-2">
        <div class="custom-col-style-2 electronic-banner-col-3 mb-30">
            <div class="electronic-banner-wrapper">
                <img src="https://cdn0.fahasa.com/media/wysiwyg/Thang-08-2022/branddayt8_coupon_310x210.jpg" alt="">
            </div>
        </div>
        <div class="custom-col-style-2 electronic-banner-col-3 mb-30">
            <div class="electronic-banner-wrapper">
                <img src="https://cdn0.fahasa.com/media/wysiwyg/Duy-VHDT/B2S-T6-22/310x210_B2S_T8.jpg" alt="">
            </div>
        </div>
        <div class="custom-col-style-2 electronic-banner-col-3 mb-30">
            <div class="electronic-banner-wrapper">
                <img src="https://cdn0.fahasa.com/media/magentothem/banner7/1980T0822_840x320.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Banner end -->

<!-- Bestseller -->
<div class="product-area-2 wrapper-padding pb-70">
    <div class="container-fluid">
        <div class="section-title-3 text-center mb-40">
            <h2>Sản phẩm bán chạy</h2>
        </div>
        <div class="row">
            <c:forEach var="item" items="${bestSeller}">
                <div class="col-lg-6 col-xl-4">
                    <div class="product-wrapper product-wrapper-border mb-30">
                        <div class="product-img-5">
                            <a href="chi-tiet?id=${item.id}">
                                <img src="${item.image}" alt="">
                            </a>
                        </div>
                        <div class="product-content-7">
                            <h4><a href="chi-tiet?pid=${item.id}">${item.name}</a></h4>
                            <c:if test="${item.discount > 0}">
                                <del>${item.price}₫</del>
                                <h5 class="pl-3">${item.price - (item.price * (item.discount
                                        / 100))}₫</h5>
                            </c:if>
                            <c:if test="${item.discount == 0}">
                                <h5 class="pl-3">${item.price}₫</h5>
                            </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- Bestseller end -->

<!-- product area start -->
<div class="popular-product-area wrapper-padding-3 pt-45 ptb-95">
    <div class="container">
        <div class="section-title-9 text-center mb-50">
            <h2>Sản phẩm giảm giá</h2>
        </div>
        <div class="product-style">
            <div class="popular-product-active-2 owl-carousel">
                <c:forEach var="item" items="${productDiscount}">
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="chi-tiet?id=${item.id}">
                                <img src="${item.image}" alt="">
                            </a>
                        </div>
                        <div class="funiture-product-content text-center">
                            <h4><a href="chi-tiet?pid=${item.id}">${item.name}</a></h4>
                            <c:if test="${item.discount > 0}">
                                <del>${item.price}₫</del>
                                <h5 class="pl-3">${item.price - (item.price * (item.discount
                                        / 100))}₫</h5>
                            </c:if>
                            <c:if test="${item.discount == 0}">
                                <h5 class="pl-3">${item.price}₫</h5>
                            </c:if>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!-- product area end -->

<!-- blog area end -->
<div class="blog-area pt-130 pb-70">
    <div class="container">
        <div class="section-title-furits text-center mb-95">
            <h2>Tin tức</h2>
        </div>
        <div class="row">
            <c:forEach var="item" items="${blogs}">
                <div class="col-lg-4 col-md-6">
                    <div class="blog-wrapper mb-30 wow fadeInLeft">
                        <div class="blog-img-2">
                            <a href="tin-tuc-chi-tiet?blogid=${item.id}"><img alt="" src="assets/img/blog/17.jpg"></a>
                        </div>
                        <div class="blog-info-wrapper-2 text-center">
                            <div class="blog-meta-2">
                            </div>
                            <h3><a href="tin-tuc-chi-tiet?blogid=${item.id}">${item.name}</a></h3>
                            <div class="blog-meta-2">
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- blog area end -->

<jsp:include page="/website/component/footer.jsp"/>

<!-- all js here -->
<script src="<c:url value="/resources/assets/js/vendor/jquery-1.12.4.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/popper.js"/>"></script>
<script src="<c:url value="/resources/assets/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/isotope.pkgd.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/imagesloaded.pkgd.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/jquery.counterup.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/waypoints.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/ajax-mail.js"/>"></script>
<script src="<c:url value="/resources/assets/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/plugins.js"/>"></script>
<script src="<c:url value="/resources/assets/js/main.js"/>"></script>
</body>
</html>
