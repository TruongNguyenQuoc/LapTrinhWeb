<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>${blog.name}</title>
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

<!-- shopping-cart-area start -->
<div class="blog-details pt-95 pb-100">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="shop-sidebar">
          <div class="sidebar-widget mb-50">
            <img src="${blog.iamge}" alt="" style="width: 370px; height: 190px">
            <div class="sidebar-img-content">
              <p>${blog.shortDesc}</p>
            </div>
          </div>
          <div class="sidebar-widget mb-50">
            <h3 class="sidebar-title">Bài viết mới nhất</h3>
            <div class="sidebar-top-rated-all">
              <c:forEach var="item" items="${newBlogs}">
                <div class="sidebar-top-rated mb-30">
                  <div class="single-top-rated">
                    <div class="top-rated-img">
                      <a href="/tin-tuc-chi-tiet?blogid=${item.id}"><img src="${item.image}" alt=""></a>
                    </div>
                    <div class="top-rated-text">
                      <h4><a href="/tin-tuc-chi-tiet?blogid=${item.id}">${item.name}</a></h4>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="blog-details-info">
          <div class="blog-meta">
          </div>
          <h3>${blog.name}</h3>
          <img src="${blog.image}" alt="">
          <div class="blog-feature">
            <p>${blog.description}</p>
          </div>
        </div>
      </div>
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
