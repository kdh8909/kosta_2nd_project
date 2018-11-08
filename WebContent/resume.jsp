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
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Dosis:400,200,300,500,600,700,800' rel='stylesheet' type='text/css'>

	<!-- Icon Fonts -->
	<link rel="stylesheet" href="css/icomoon/style.css" type="text/css">
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

	<!-- SKIN -->
	<link rel="stylesheet" href="css/color-scheme/default-blue.css" type="text/css">

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
							<li><a href="#">이력서작성</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- INNER CONTENT -->
		<div class="container">
			<div class="row"><br>
				<h3 class="uppercase text-center">이력서 작성</h3>
				<div class="clearfix space30"></div>
				<div class="col-md-12">
					<div class="tab-style1">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1-1" data-toggle="tab"><i class="fa fa-fire"></i>기본정보</a></li>
							<li><a href="#tab1-2" data-toggle="tab"><i class="fa fa-pencil"></i>경력사항</a></li>
							<li><a href="#tab1-3" data-toggle="tab"><i class="fa fa-check"></i>자기소개서</a></li>
							<li><a href="#tab1-4" data-toggle="tab"><i class="fa fa-calendar"></i>완성본</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tab1-1">


								<div class="space-top">
									<form method="post" class="contact-form">
										<div class="text-center" style="display: inline-block;">
											<img id="thumbnail"
												src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
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
													class="form-control input-lg" name="name" id="name"
													placeholder="이름" required="" type="text">
											</div>
											<div class="form-group col-md-8 col-sm-8">
												<label class="sr-only" for="email"></label> <input
													class="form-control input-lg" name="email" id="email"
													placeholder="이메일" required="" type="email">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-4 col-sm-4">
												<label class="sr-only" for="age"></label> <input
													class="form-control input-lg" name="age" id="age"
													placeholder="나이" required="" type="text">
											</div>
											<div class="form-group col-md-6 col-sm-6">
												<label class="sr-only" for="birth"></label> <input
													class="form-control input-lg" name="birth" id="birth"
													placeholder="생년월일    ex)19890907" required="" type="text">
											</div>
										</div>
										<div class="row">
											<label class="sr-only" for="sex"></label> <select
												class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>성별</option>
												<option>남자</option>
												<option>여자</option>
											</select> 
										</div>
										<div class="space20"></div>
										<input class="button btn-md" value="전송" type="submit">
									</form>
									<div class="space40"></div>
								</div>


							</div>
							<div class="tab-pane" id="tab1-2">
							
							
							<div class="space-top">
									<form method="post" class="contact-form">
										<div class="text-center" style="display: inline-block;">
											<img id="thumbnail"
												src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
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
													class="form-control input-lg" name="name" id="name"
													placeholder="이름" required="" type="text">
											</div>
											<div class="form-group col-md-8 col-sm-8">
												<label class="sr-only" for="email"></label> <input
													class="form-control input-lg" name="email" id="email"
													placeholder="이메일" required="" type="email">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-4 col-sm-4">
												<label class="sr-only" for="age"></label> <input
													class="form-control input-lg" name="age" id="age"
													placeholder="나이" required="" type="text">
											</div>
											<div class="form-group col-md-6 col-sm-6">
												<label class="sr-only" for="birth"></label> <input
													class="form-control input-lg" name="birth" id="birth"
													placeholder="생년월일    ex)19890907" required="" type="text">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-5 col-sm-5">
												<label class="sr-only" for="location"></label> <input
													class="form-control input-lg" name="location" id="location"
													placeholder="희망 근무 지역" required="" type="text">
											</div>
										</div>
										<div class="row">
											<label class="sr-only" for="sex"></label> <select
												class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>성별</option>
												<option>남자</option>
												<option>여자</option>
											</select> <select class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>경력 선택</option>
												<option>신입</option>
												<option>경력</option>
											</select> <select class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>구직 상태</option>
												<option>구직중</option>
												<option>재직중</option>
											</select>
										</div>
										<div class="space20"></div>
										<div class="row">
											<div class="form-group col-md-12 col-sm-12">
												<input class="form-control input-lg" name="title" id="title"
													placeholder="제목을 입력하세요." required="" type="text"
													style="resize: none; wrap: hard;">
											</div>
											<div class="form-group col-md-12 col-sm-12">
												<textarea class="form-control" rows="10" name="content"
													id="content" placeholder="1000자 이내로 내용을 입력하세요."
													maxlength="1000" style="resize: none; wrap: hard;"></textarea>
												<script type="text/javascript" language="javascript"
													src="./js/charcount.js"></script>
											</div>
										</div>
										<input class="button btn-md" value="전송" type="submit">
									</form>
									<div class="space40"></div>
								</div>
							
							
							</div>
							<div class="tab-pane" id="tab1-3">
								
								
								<div class="space-top">
									<form method="post" class="contact-form">
										<div class="text-center" style="display: inline-block;">
											<img id="thumbnail"
												src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
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
													class="form-control input-lg" name="name" id="name"
													placeholder="이름" required="" type="text">
											</div>
											<div class="form-group col-md-8 col-sm-8">
												<label class="sr-only" for="email"></label> <input
													class="form-control input-lg" name="email" id="email"
													placeholder="이메일" required="" type="email">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-4 col-sm-4">
												<label class="sr-only" for="age"></label> <input
													class="form-control input-lg" name="age" id="age"
													placeholder="나이" required="" type="text">
											</div>
											<div class="form-group col-md-6 col-sm-6">
												<label class="sr-only" for="birth"></label> <input
													class="form-control input-lg" name="birth" id="birth"
													placeholder="생년월일    ex)19890907" required="" type="text">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-5 col-sm-5">
												<label class="sr-only" for="location"></label> <input
													class="form-control input-lg" name="location" id="location"
													placeholder="희망 근무 지역" required="" type="text">
											</div>
										</div>
										<div class="row">
											<label class="sr-only" for="sex"></label> <select
												class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>성별</option>
												<option>남자</option>
												<option>여자</option>
											</select> <select class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>경력 선택</option>
												<option>신입</option>
												<option>경력</option>
											</select> <select class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>구직 상태</option>
												<option>구직중</option>
												<option>재직중</option>
											</select>
										</div>
										<div class="space20"></div>
										<div class="row">
											<div class="form-group col-md-12 col-sm-12">
												<input class="form-control input-lg" name="title" id="title"
													placeholder="제목을 입력하세요." required="" type="text"
													style="resize: none; wrap: hard;">
											</div>
											<div class="form-group col-md-12 col-sm-12">
												<textarea class="form-control" rows="10" name="content"
													id="content" placeholder="1000자 이내로 내용을 입력하세요."
													maxlength="1000" style="resize: none; wrap: hard;"></textarea>
												<script type="text/javascript" language="javascript"
													src="./js/charcount.js"></script>
											</div>
										</div>
										<input class="button btn-md" value="전송" type="submit">
									</form>
									<div class="space40"></div>
								</div>
								
								
							</div>
							<div class="tab-pane" id="tab1-4">
								
								
								<div class="space-top">
									<form method="post" class="contact-form">
										<div class="text-center" style="display: inline-block;">
											<img id="thumbnail"
												src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
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
													class="form-control input-lg" name="name" id="name"
													placeholder="이름" required="" type="text">
											</div>
											<div class="form-group col-md-8 col-sm-8">
												<label class="sr-only" for="email"></label> <input
													class="form-control input-lg" name="email" id="email"
													placeholder="이메일" required="" type="email">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-4 col-sm-4">
												<label class="sr-only" for="age"></label> <input
													class="form-control input-lg" name="age" id="age"
													placeholder="나이" required="" type="text">
											</div>
											<div class="form-group col-md-6 col-sm-6">
												<label class="sr-only" for="birth"></label> <input
													class="form-control input-lg" name="birth" id="birth"
													placeholder="생년월일    ex)19890907" required="" type="text">
											</div>
										</div>
										<div class="row">
											<div class="form-group col-md-5 col-sm-5">
												<label class="sr-only" for="location"></label> <input
													class="form-control input-lg" name="location" id="location"
													placeholder="희망 근무 지역" required="" type="text">
											</div>
										</div>
										<div class="row">
											<label class="sr-only" for="sex"></label> <select
												class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>성별</option>
												<option>남자</option>
												<option>여자</option>
											</select> <select class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>경력 선택</option>
												<option>신입</option>
												<option>경력</option>
											</select> <select class="form-control"
												style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;">
												<option>구직 상태</option>
												<option>구직중</option>
												<option>재직중</option>
											</select>
										</div>
										<div class="space20"></div>
										<div class="row">
											<div class="form-group col-md-12 col-sm-12">
												<input class="form-control input-lg" name="title" id="title"
													placeholder="제목을 입력하세요." required="" type="text"
													style="resize: none; wrap: hard;">
											</div>
											<div class="form-group col-md-12 col-sm-12">
												<textarea class="form-control" rows="10" name="content"
													id="content" placeholder="1000자 이내로 내용을 입력하세요."
													maxlength="1000" style="resize: none; wrap: hard;"></textarea>
												<script type="text/javascript" language="javascript"
													src="./js/charcount.js"></script>
											</div>
										</div>
										<input class="button btn-md" value="전송" type="submit">
									</form>
									<div class="space40"></div>
								</div>
								
								
							</div>
						</div>
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