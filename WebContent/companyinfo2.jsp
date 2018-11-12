<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert Title</title>
<script>
	$(function() {
		console.log("메인-companyinfo");
	});
</script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

<!-- Styles -->
<link rel="stylesheet" href="js/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="js/owl-carousel/owl.theme.css">
<link rel="stylesheet" href="js/owl-carousel/owl.transitions.css">
<link rel="stylesheet" href="js/rs-plugin/css/settings.css">
<link rel="stylesheet" href="js/flexslider/flexslider.css">
<link rel="stylesheet" href="js/isotope/isotope.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="js/magnific-popup/magnific-popup.css">
<link rel="stylesheet" href="css/style.css">

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Dosis:400,200,300,500,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Icon Fonts -->
<link rel="stylesheet" href="css/icomoon/style.css" type="text/css">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"
	type="text/css">

<!-- SKIN -->
<link rel="stylesheet" href="css/color-scheme/default-blue.css"
	type="text/css">

</head>
<body>

	<!-- Header !-->
	<%@ include file="view/header.jsp"%>

	<!-- PAGE HEADER -->
	<div class="page_header">
		<div class="page_header_parallax2">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3>
							<span>기업정보관리</span>Management <br>your company!
						</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="bcrumb-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ul class="bcrumbs">
							<li><a href="#"><i class="fa fa-home"></i> 홈</a></li>
							<li><a href="#">기업정보관리</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- INNER CONTENT -->
	<div class="container" style="padding-bottom: 50px;">
		
		<div class="tab-content">
			<div>
				<div class="container" style="width: 90%;padding-top:50px;">
					<form method="post" action="controller?command=updateCompanyInfo"
						enctype="multipart/form-data">
						<div class="panel-group" id="accordion-e1">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-e1" href="#collapse1">
											<h4>기업정보관리</h4> <span class="fa fa-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="space-top">
												<div>
												
													<img id="thumbnail" src="save/company/${dto.companyImg}"
														class="avatar img-circle img-thumbnail"
														style="width: 200px; height: 200px; cursor: pointer; margin: 15px;"
														alt="avatar" data-toggle="tooltip" data-placement="top"
														title="클릭하여 사진을 업로드하세요.">

													<script>
														$(function() {
															$("#thumbnail")
																	.tooltip()
														})

														$(function() {
															$("#thumbnail")
																	.click(
																			function() {
																				$(
																						"input[type=file]")
																						.css(
																								"display",
																								"inline-block");
																			});
														});
													</script>
												</div>
												<input type="file" name="file"
													class="text-center center-block file-upload"
													style="display: none;">
												<div class="row" style="padding-top: 20px;">

													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>회사이름</h4>
														</div>
														<label class="sr-only" for="companyName"></label> <input
															class="form-control input-lg" name="companyName" id="companyName"
															placeholder="회사이름" required="" type="text"
															value=${dto.companyName}>
													</div>

													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>대표</h4>
														</div>
														<label class="sr-only" for="companyCeo"></label> <input
															class="form-control input-lg" name="companyCeo"
															id="companyCeo" placeholder="대표" required="" type="text"
															value=${dto.companyCeo}>
													</div>
												</div>
												<div class="row">
													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>직원수</h4>
														</div>
														<label class="sr-only" for="companyEmployees"></label> <input
															class="form-control input-lg" name="companyEmployees" id="companyEmployees"
															placeholder="직원수" required="" type="text"
															value=${dto.companyEmployees}>
													</div>
													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>홈페이지</h4>
														</div>
														<label class="sr-only" for="birth"></label> <input
															class="form-control input-lg" name="companyPage"
															id="companyPage" placeholder="홈페이지" required=""
															type="text" value=${dto.companyPage}>
													</div>
												</div>
												
												<div class="row">
													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>설립일</h4>
														</div>
														<label class="sr-only" for="companyEstblish"></label> <input
															class="form-control input-lg" name="companyEstblish" id="companyEstblish"
															placeholder="설립일    ex(1999-09-07)" required="" type="text"
															value=${dto.companyEstblish}>
													</div>
													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>주소</h4>
														</div>
														<label class="sr-only" for="companyHeadAddr"></label> <input
															class="form-control input-lg" name="companyHeadAddr"
															id="companyHeadAddr" placeholder="주소" required=""
															type="text" value=${dto.companyHeadAddr}>
													</div>
												</div>
												
												
												<div class="row">
													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>연락처</h4>
														</div>
														<label class="sr-only" for="companyPhone"></label> <input
															class="form-control input-lg" name="companyPhone" id="companyPhone"
															placeholder="연락처" required="" type="text"
															value=${dto.companyPhone}>
													</div>
												</div>

												<div class="row">
													<div class="form-group col-md-3 col-sm-3">
														<div class="text-center" style="float: left">
															<h4>규모</h4>
														</div>
														<label class="sr-only" for="companyType"></label> <select
															class="form-control"
															style="width: 100px; cursor: pointer; margin-left: 16px; display: inline-block;"
															name="companyType">
															<option>규모</option>
															<option value="대기업" selected=${dto.companyType}>대기업</option>
															<option value="공기업" selected=${dto.companyType}>공기업</option>
															<option value="중소기업" selected=${dto.companyType}>중소기업</option>
															<option value="외국계" selected=${dto.companyType}>외국계</option>
														</select>
													</div>										

													<div class="form-group col-md-4 col-sm-4">
														<div class="text-center" style="float: left">
															<h4>카테고리</h4>
														</div>
														<label class="sr-only" for="companyCategory"></label> <select
															class="form-control"
															style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;"
															name="companyCategory">
															<option>카테고리</option>
															<option value="IT" selected=${dto.companyCategory}>IT</option>
															<option value="금융업" selected=${dto.companyCategory}>금융업</option>
															<option value="유통업" selected=${dto.companyCategory}>유통업</option>
															<option value="서비스업" selected=${dto.companyCategory}>서비스업</option>
															<option value="기타" selected=${dto.companyCategory}>기타</option>
														</select>
													</div>

												</div>
												<div class="space20"></div>
											</div>
										</div>
									</div>
								</div>




							</div>

						</div>
						<div class="row">
							<input class="button btn-md" value="수정하기" type="submit"
								style="margin: 20px auto;">
							<!-- <input class="button btn-md" value="등록하기" type="submit"
								style="margin: 20px auto;"> -->
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>


	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>


	<!-- jQuery -->
	<!-- 	<script src="js/jquery.js"></script> -->

	<!-- Plugins -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/menu.js"></script>
	<script src="js/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<script src="js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
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