<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>

</head>
<body>
<div class="pl-200 pr-200 overflow clearfix">
  <div class="categori-menu-slider-wrapper clearfix">
    <div class="categories-menu">
      <div class="category-heading">
        <h3> Danh mục <i class="pe-7s-angle-down"></i></h3>
      </div>
      <div class="category-menu-list">
        <ul>
          <li>
            <a href="#">Sách Việt<i class="pe-7s-angle-right"></i></a>
            <div class="category-menu-dropdown">
              <c:forEach var="item" items="${collections}">
                <div class="category-dropdown-style category-common4 mb-40"
                     style="width: 30%">
                  <h4 class="categories-subtitle"> ${item.name}</h4>
                  <c:forEach var="c" items="${categories}">
                    <c:if test="${c.collectionID == item.id }">
                      <ul>
                        <li><a href="/danh-muc?cid=${c.id}">${c.name}</a></li>
                      </ul>
                    </c:if>
                  </c:forEach>
                </div>
              </c:forEach>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="menu-slider-wrapper">
      <jsp:include page="/website/component/menu.jsp"/>
      <div class="slider-area">
        <div class="slider-active owl-carousel">
          <div class="single-slider single-slider-hm3 bg-img pt-170 pb-173" style="background-image: url(assets/img/slider/5.jpg)">
            <div class="slider-animation slider-content-style-3 fadeinup-animated">
              <h2 class="animated">Invention of <br>design platform</h2>
              <h4 class="animated">Best Product With warranty </h4>
              <a class="electro-slider-btn btn-hover" href="product-details.html">buy now</a>
            </div>
          </div>
          <div class="single-slider single-slider-hm3 bg-img pt-170 pb-173" style="background-image: url(assets/img/slider/20.jpg)">
            <div class="slider-animation slider-content-style-3 fadeinup-animated">
              <h2 class="animated">Invention of <br>design platform</h2>
              <h4 class="animated">Best Product With warranty </h4>
              <a class="electro-slider-btn btn-hover" href="product-details.html">buy now</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
