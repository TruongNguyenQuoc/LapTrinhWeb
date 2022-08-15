<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Đăng nhập</title>
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

<div class="register-area ptb-100">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
                <div class="login">
                    <div class="login-form-container">
                        <div class="login-form">
                            <form action="dang-nhap" method="post">
                                <input type="text" name="username" placeholder="Tên đăng nhập">
                                <input type="password" name="password" placeholder="Mật khẩu">
                                <div class="button-box">
                                    <div class="login-toggle-btn">
                                        <a href="#">Quên mật khẩu?</a>
                                    </div>
                                    <button type="submit" class="default-btn floatright">Đăng nhập</button>
                                </div>
                            </form>
                        </div>
                    </div>
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
