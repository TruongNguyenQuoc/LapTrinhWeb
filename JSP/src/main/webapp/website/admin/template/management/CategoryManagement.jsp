<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="php"%>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Page</title>
<!-- plugins:css -->
<link rel="stylesheet" href="/admin/template/vendors/feather/feather.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="/admin/template/vendors/mdi/css/materialdesignicons.min.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="/admin/template/vendors/ti-icons/css/themify-icons.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="/admin/template/vendors/typicons/typicons.css" type="text/css"
	media="screen">
<link rel="stylesheet"
	href="/admin/template/vendors/simple-line-icons/css/simple-line-icons.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="/admin/template/vendors/css/vendor.bundle.base.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="/admin/template/vendors/datatables.net-bs4/dataTables.bootstrap4.css"
	type="text/css" media="screen">
<link rel="stylesheet"
	href="/admin/template/js/select.dataTables.min.css" type="text/css"
	media="screen">
<link rel="stylesheet"
	href="/admin/template/css/vertical-layout-light/style.css"
	type="text/css" media="screen">
<link rel="stylesheet" href="/admin/template/css/main.css"
	type="text/css" media="screen">
<link rel="shortcut icon" href="Admin/template/images/favicon.png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-scroller">
		<nav
			class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
			<%@include file="../component/logoInfo.jsp"%>
			<%@include file="../component/navbarMenu.jsp"%>
		</nav>
		<div class="container-fluid page-body-wrapper">
			<%@include file='../component/themeSetting.jsp'%>
			<%@include file="../component/leftbar.jsp"%>
			<div class="main-panel">
				<div class="content-wrapper"
					style="padding: 20px; margin: 10px; width: 100%">
					<h1 class="text-center">List Category</h1>
					<table class="table table-striped table-bordered text-center">
						<tr>
							<th>Collection Name</th>
							<th>List Category</th>
						</tr>
						<php:forEach items="${collections }" var="collection">
							<tr>
								<td><h3 style="color: red">${collection.getName() }</h3></td>
								<td>
									<ul class="list-group">
										<php:forEach items="${categories }" var="category">
											<php:if
												test="${collection.getId() == category.getCollection() }">
												<li class="list-group-item list-group-item-action list-group-item-success" style="font-size: 18px">${category.getName() }</li>
											</php:if>
										</php:forEach>
									</ul>
								</td>
							</tr>
						</php:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="/admin/template/vendors/js/vendor.bundle.base.js"></script>
	<script src="/admin/template/vendors/chart.js/Chart.min.js"></script>
	<script
		src="/admin/template/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	<script
		src="/admin/template/vendors/progressbar.js/progressbar.min.js"></script>

	<script src="/admin/template/js/off-canvas.js"></script>
	<script src="/admin/template/js/hoverable-collapse.js"></script>
	<script src="/admin/template/js/template.js"></script>
	<script src="/admin/template/js/settings.js"></script>
	<script src="/admin/template/js/todolist.js"></script>
	<script src="/admin/template/js/dashboard.js"></script>
	<script src="/admin/template/js/Chart.roundedBarCharts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>


