<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"
    errorPage="errors/error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!-- Ctrl+Space로 prefix입력 -->
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="images/basic/favicon.png">
<title>코스타 구인 | 구직 메인</title>

<link rel="stylesheet" type="text/css" href="table.css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="table.css/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="table.css/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="table.css/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="table.css/css/util.css">
<link rel="stylesheet" type="text/css" href="table.css/css/main.css">
<link rel="icon" type="image/png" href="table.css/images/icons/favicon.ico"/>
	
</head>
<body>

	<div class="outer-wrapper">
		<!-- Header !-->
		<%@ include file="../view/header.jsp"%>

		<!-- Main !-->
		<div class="inner-content no-padding">
			<c:choose>
			<c:when test="${listNull==1}">
				<div class="text-center" style="padding:8%">
				<!-- <div class="container-table100"> -->
					<div class="wrap-table100">
						<div class="table100 ver1 m-b-60" align="center">
							<table data-vertable="ver1" cellspacing="0" style="width:50%;">
							<thead>
								<tr class="row100 head">
									<th class="column100 column2" data-column="column1" style="text-align:center;">번호</th>
									<th class="column100 column3" data-column="column2" style="text-align:center;">아이디</th>
									<th class="column100 column4" data-column="column3" style="text-align:center;">비밀번호</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${list}" var="itms" varStatus="state">
								<tr class="row100">
									<td class="column100 column2" data-column="column1">${state.count}</td>
									<td class="column100 column3" data-column="column2">${itms.personId}</td>
									<td class="column100 column4" data-column="column3">${itms.personName}</td>
                				</tr>
							</c:forEach>
							</table>
						</div>
					</div>
				<!-- </div> -->
				</div>
			</c:when>
			<c:otherwise>
				<div class="team-home" >
					<div class="text-center space40" style="padding:10%">
						<h2 class="title uppercase">${sessionScope.resultMsg}</h2><br><br>
						<input type="button" value="홈으로" class="btn btn-primary" onclick="location.href='index.jsp'">
					</div>
				</div>
			</c:otherwise>
			</c:choose>
		</div>

		<!-- FOOTER COPYRIGHT -->
		<%@ include file="../view/footer.jsp"%>
	</div>
	
	<script src="table.css/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="table.css/vendor/bootstrap/js/popper.js"></script>
	<script src="table.css/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="table.css/vendor/select2/select2.min.js"></script>
	<script src="table.css/js/main.js"></script>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Plugins -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/menu.js"></script>
	<script src="js/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="js/rs-plugin/js/jquery.themepunch.revolution.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/isotope/isotope.pkgd.js"></script>
	<script src="js/jflickrfeed.min.js"></script>
	<script src="js/tweecool.js"></script>
	<script src="js/flexslider/jquery.flexslider.js"></script>
	<script src="js/easypie/jquery.easypiechart.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery.appear.js"></script>
	<script src="js/jquery.inview.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>

