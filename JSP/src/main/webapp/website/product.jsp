<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cửa hàng</title>
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
<jsp:include page="/website/component/menu.jsp"/>
<div class="shop-page-wrapper shop-page-padding ptb-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop-sidebar mr-50">
                    <div class="sidebar-widget mb-45">
                        <h3 class="sidebar-title">Danh mục</h3>
                        <div class="sidebar-categories">
                            <ul>
                                <c:forEach var="item" items="${categories}">
                                    <li><a href="danh-muc?cid=${item.id}">${item.name}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar-widget mb-50">
                        <h3 class="sidebar-title">Sản phẩm mới</h3>
                        <div class="sidebar-top-rated-all">
                            <c:forEach var="item" items="${topProducts}">
                                <div class="sidebar-top-rated mb-30">
                                    <div class="single-top-rated">
                                        <div class="top-rated-img">
                                            <a href="chi-tiet?pid=${item.id}"><img
                                                    src="${item.image}" alt="" style="width: 91px; height: 88px;">
                                            </a>
                                        </div>
                                        <div class="top-rated-text">
                                            <h5><a href="chi-tiet?pid=${item.id}"> ${item.name} </a></h5>
                                            <span>${item.price}</span>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop-product-wrapper res-xl res-xl-btn">
                    <div class="shop-bar-area">
                        <div class="shop-product-content tab-content">
                            <div id="grid-sidebar1" class="tab-pane fade active show">
                                <div class="row">
                                    <c:forEach var="item" items="${products}">
                                        <div class="col-lg-6 col-md-6 col-xl-3">
                                            <div class="product-wrapper mb-30">
                                                <div class="product-img">
                                                    <a href="chi-tiet?pid=${item.id}">
                                                        <img src="${item.image}" alt="">
                                                    </a>
                                                </div>
                                                <div class="product-content">
                                                    <h4><a href="chi-tiet?pid=${item.id}">${item.name}</a></h4>
                                                    <span>${item.price}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pagination-style mt-30 text-center">
                    <ul>
                    <c:if test="${maxPage > 1}">
                        <c:if test="${prePage > 1}">
                            <li><a href="san-pham?pageIndex=${backPage}">&laquo;</a></li>
                        </c:if>
                        <c:forEach begin="1" end="${maxPage}" step="1" var= "i" >
                            <c:if test="${(i - 1 ) == pageIndex}">
                                <li class="active"><a href="san-pham?pageIndex=${i -1}">${i}</a></li>
                            </c:if>
                            <c:if test="${(i - 1 ) != pageIndex}">
                                <li><a href="san-pham?pageIndex=${i - 1}">${i}</a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${nextPage < maxPage + 1}">
                            <li><a href="san-pham?pageIndex=${nextPage}">&raquo;</a></li>
                        </c:if>
                    </c:if>
                    </ul>
                </div>
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
