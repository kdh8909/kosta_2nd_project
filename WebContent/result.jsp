<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"
    errorPage="errors/error.jsp" %>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="images/basic/favicon.png">
<title>코스타 구인 | 구직 메인</title>
</head>
<body>

	<div class="outer-wrapper">
		<!-- Header !-->
		<%@ include file="../view/header.jsp"%>

		<!-- Main !-->
		<div class="inner-content no-padding">
		<div class="team-home" >
			<div class="text-center space40" style="padding:10%">
				<h2 class="title uppercase">${sessionScope.resultMsg}</h2><br><br>
				<input type="button" value="홈으로" class="btn btn-primary" onclick="location.href='index.jsp'">
			</div>
			
		</div>
		</div>

		<!-- FOOTER COPYRIGHT -->
		<%@ include file="../view/footer.jsp"%>
	</div>

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

