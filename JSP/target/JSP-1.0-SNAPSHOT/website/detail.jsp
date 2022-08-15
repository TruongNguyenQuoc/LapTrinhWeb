<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>${products.name}</title>
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
                                value="/resources/assets/css/easyzoom.css"/>">
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
<jsp:include page="/website/component/menu.jsp"/>
<div class="product-details ptb-100 pb-90">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-lg-5 col-12">
                <div class="product-details-5 pr-70">
                    <img src="${product.image}" alt="">
                </div>
            </div>
            <div class="col-md-12 col-lg-7 col-12">
                <div class="sidebar-active product-details-content">
                    <h3>${product.name}</h3>
                    <div class="details-price">
                        <span>${product.price}</span>
                    </div>
                    <p>${product.shortDesc}</p>
                    <div class="quickview-plus-minus">
                        <div class="cart-plus-minus">
                            <input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
                        </div>
                        <div class="quickview-btn-cart">
                            <a class="btn-hover-black" href="#">Thêm vào giỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="product-description-review-area pb-90">
    <div class="container">
        <div class="product-description-review text-center">
            <div class="description-review-title nav" role=tablist>
                <a class="active" href="#pro-dec" data-toggle="tab" role="tab" aria-selected="true">
                    Mô tả
                </a>
            </div>
            <div class="description-review-text tab-content">
                <div class="tab-pane active show fade" id="pro-dec" role="tabpanel">
                    <p>${product.description}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- product area start -->
<div class="product-area pb-95">
    <div class="container">
        <div class="section-title-3 text-center mb-50">
            <h2>Sản phẩm tương tự</h2>
        </div>
        <div class="product-style">
            <div class="related-product-active owl-carousel">
                <c:forEach var="item" items="${sameProducts}">
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="chi-tiet?pid=${item.id}">
                                <img src="${item.image}" alt="">
                            </a>
                        </div>
                        <div class="product-content">
                            <h4><a href="#">${item.name}</a></h4>
                            <span>${item.price}</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

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
