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

<!-- shopping-cart-area start -->
<div class="blog-area pt-95 pb-100">
    <div class="container">
        <div class="blog-mesonry">
            <div class="row grid">
                <c:forEach var="item" items="${blogs}">
                    <div class="col-lg-4 col-md-6 grid-item">
                        <div class="blog-wrapper mb-40">
                            <div class="blog-img">
                                <a href="tin-tuc-chi-tiet?blogid=${item.id}"><img src="${item.image}" alt=""></a>
                            </div>
                            <div class="blog-info-wrapper">
                                <div class="blog-meta">
                                </div>
                                <h4><a href="tin-tuc-chi-tiet?blogid=${item.id}">${item.name}</a></h4>
                                <p>${item.shortDesc}</p>
                                <a class="blog-btn btn-hover" href="tin-tuc?blogId=${item.id}">Đọc thêm</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
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
<!-- shopping-cart-area end -->

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
