<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert Title</title>

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
							<span>이력서</span>Presentation <br>your career!
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
							<li><a href="#">이력서관리</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="container" style="padding-bottom: 50px;">
		<h3 class="uppercase text-center" style="padding: 30px">이력서 관리</h3>


		<div class="tab-content">
			<div >
								<div class="container" style="width: 90%;">
					<form method="post" action="#">
						<div class="panel-group" id="accordion-e1">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-e1" href="#collapse1">
											<h4>기본정보</h4> <span class="fa fa-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="space-top">
												<div>
													<img id="thumbnail"
														src="save/person/${dto.personImg}"
														class="avatar img-circle img-thumbnail"
														style="cursor: pointer" alt="avatar">
													<h6 style="display: inline-block;">썸네일을 클릭하여 사진을
														업로드해주세요.</h6>
													<script>
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
												<input type="file"
													class="text-center center-block file-upload"
													style="display: none;">
												<div class="row" style="padding-top: 20px;">

													<div class="form-group col-md-4 col-sm-4">
														<label class="sr-only" for="name"></label> <input
															class="form-control input-lg" name="personId" id="name"
															placeholder="이름" required="" type="text" value=${dto.personName}>
													</div>

													<div class="form-group col-md-4 col-sm-4">
														<label class="sr-only" for="email"></label> <input
															class="form-control input-lg" name="email" id="email"
															placeholder="이메일" required="" type="email" value=${dto.personEmail}>
													</div>
												</div>
												<div class="row">
													<div class="form-group col-md-4 col-sm-4">
														<label class="sr-only" for="age"></label> <input
															class="form-control input-lg" name="age" id="age"
															placeholder="나이" required="" type="text" value=${dto.personAge}>
													</div>
													<div class="form-group col-md-4 col-sm-4">
														<label class="sr-only" for="birth"></label> <input
															class="form-control input-lg" name="birth" id="birth"
															placeholder="생년월일    ex)19890907" required="" type="text" value=${dto.personBirth}>
													</div>
												</div>
												<div class="row">
													<label class="sr-only" for="sex"></label> <select
														class="form-control"
														style="width: 100px; cursor: pointer; margin-left: 16px; display: inline-block;"
														name="sex">
														<option>성별</option>
														<option value="남자" selected=${dto.personSex}>남자</option>
														<option value="여자" selected=${dto.personSex}>여자</option>
													</select> <label class="sr-only" for="new_old"></label> <select
														class="form-control"
														style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;"
														name="new_old">
														<option>경력 여부</option>
														<option value="신입" selected=${dto.personCareer}>신입</option>
														<option value="경력" selected=${dto.personCareer}>경력</option>
													</select> <label class="sr-only" for="status"></label> <select
														class="form-control"
														style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;"
														name="status">
														<option>구직 여부</option>
														<option value="0" selected=${dto.personJobStatus}>구직중</option>
														<option value="1" selected=${dto.personJobStatus}>재직중</option>
													</select> <label class="sr-only" for="occupation"></label> <select
														class="form-control"
														style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;"
														name="occupation">
														<option>분야</option>
														<option value="웹개발" selected=${dto.personOccupation}>웹개발</option>
														<option value="응용프로그램개발" selected=${dto.personOccupation}>응용프로그램개발</option>
														<option value="시스템개발" selected=${dto.personOccupation}>시스템개발</option>
														<option value="인공지능(AI)/빅데이터" selected=${dto.personOccupation}>인공지능(AI)/빅데이터</option>
														<option value="학생/무직" selected=${dto.personOccupation}>학생/무직</option>
													</select>

												</div>
												<div class="space20"></div>
											</div>
										</div>
									</div>
								</div>




								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-e1" href="#collapse2">
											<h4>경력사항</h4> <span class="fa fa-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapse2" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">

											<div class="form-group col-md-10 col-sm-10">
												<textarea class="form-control" rows="10"
													name="carrer_content" id="carrer_content"
													placeholder="500자 이내로 경력사항을 입력하세요." maxlength="500"
													style="resize: none; wrap: hard;"></textarea>
												<script type="text/javascript" language="javascript"
													src="./js/charcount.js"></script>
											</div>

										</div>
									</div>
								</div>


								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion-e1" href="#collapse3">
											<h4>자기소개서</h4> <span class="fa fa-chevron-down"></span>
										</a>
									</h4>
								</div>
								<div id="collapse3" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="row">
											<div class="form-group col-md-10 col-sm-10">
												<label class="sr-only" for="title"></label> <input
													class="form-control input-lg" name="intro_title"
													id="intro_title" placeholder="제목을 입력하세요." required=""
													type="text">
											</div>
											<div class="form-group col-md-10 col-sm-10">
												<textarea class="form-control" rows="10"
													name="intro_content" id="intro_content"
													placeholder="1000자 이내로 자기소개를 작성하세요." maxlength="500"
													style="resize: none; wrap: hard;"></textarea>
												<script type="text/javascript" language="javascript"
													src="./js/charcount.js"></script>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>
						<div class="row">
							<input class="button btn-md" value="등록하기" type="submit"
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
	<script src="js/jquery.js"></script>

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