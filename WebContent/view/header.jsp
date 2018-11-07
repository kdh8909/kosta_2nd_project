<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="favicon" href="images/basic/favicon.png">
<title>코스타 구인 | 구직 메인</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

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
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" >
	<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR" rel="stylesheet">

	<!-- SKIN -->
	<link rel="stylesheet" href="css/color-scheme/default-blue.css" type="text/css">



	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.2/jquery.xdomainrequest.min.js"></script>      
	
	<script type="text/javascript" src="js/jquery.js"></script>

	
<style>

/* 로그인 css */
.seminor-login-modal-body .close{
 position: relative;
 top: -45px;
 left: 10px;
color: #1cd8ad;
}
.seminor-login-modal-body .close{
    opacity:0.75;
}

.seminor-login-modal-body .close:focus, .seminor-login-modal-body .close:hover {
    color: #39e8b0;
 opacity: 1;
 text-decoration: none;
 outline:0;
}

.seminor-login-modal .modal-dialog .modal-content{
    border-radius:0px;
}

/* form animation */
.seminor-login-form .form-group {
  position: relative;
  margin-bottom: 1.5em !important;
}
.seminor-login-form .form-control{
 border: 1px solid !important;
 /* border-bottom:1px solid #adadad !important; */
 border-radius:0 !important;
 

}
.seminor-login-form .form-control:focus, .seminor-login-form .form-control:active{
 outline:none !important;
 outline-width: 0;
 border-color: #adadad !important;
 box-shadow: 0 0 0 0.2rem transparent;
}
*:focus {
 outline: none;
}
.seminor-login-form{
 padding: 2em 0 0;
}

.form-control-placeholder {
position: absolute;
top: 0;
padding: 7px 0 0 13px;
transition: all 200ms;
opacity: 0.5;
border-top: 0px;
border-left: 0;
border-right: 0;
}

.form-control:focus + .form-control-placeholder,
.form-control:valid + .form-control-placeholder {
font-size: 75%;
-webkit-transform: translate3d(0, -100%, 0);
       transform: translate3d(0, -100%, 0);
opacity: 1;
}

.container-checkbox input {
 position: absolute;
 opacity: 0;
 cursor: pointer;
}
.checkmark-box {
 position: absolute;
 top: -5px;
 left: 0;
 height: 25px;
 width: 25px;
 background-color: #adadad;
}
.container-checkbox {
 display: block;
 position: relative;
 padding-left: 40px;
 margin-bottom: 20px;
 cursor: pointer;
 font-size: 14px;
 font-weight: bold;
 -webkit-user-select: none;
 -moz-user-select: none;
 -ms-user-select: none;
 user-select: none;
 line-height: 1.1;
}
.container-checkbox input:checked ~ .checkmark-box:after {
 color: #fff;
}
.container-checkbox input:checked ~ .checkmark-box:after {
 display: block;
}
.container-checkbox .checkmark-box:after {
 left: 10px;
 top: 4px;
 width: 7px;
 height: 15px;
 border: solid white;
 border-width: 0 3px 3px 0;
 -webkit-transform: rotate(45deg);
 -ms-transform: rotate(45deg);
 transform: rotate(45deg);
}
.checkmark:after, .checkmark-box:after {
 content: "";
 position: absolute;
 display: none;
}
.container-checkbox input:checked ~ .checkmark-box {
 background-color: #f58220;
 border: 0px solid transparent;
}
.btn-check-log .btn-check-login {
 font-size: 16px;
 padding: 10px 0;
}
button.btn-check-login:hover {
    color: #fff;
    background-color: #f58220;
    border: 2px solid #f58220;
}
.btn-check-login {
 color: #f58220;
 background-color: transparent;
 border: 2px solid #f58220;
 transition: all ease-in-out .3s;
}
.btn-check-login {
 display: inline-block;
 padding: 12px 0;
 margin-bottom: 0;
 line-height: 1.42857143;
 text-align: center;
 white-space: nowrap;
 vertical-align: middle;
 -ms-touch-action: manipulation;
 touch-action: manipulation;
 cursor: pointer;
 -webkit-user-select: none;
 -moz-user-select: none;
 -ms-user-select: none;
 user-select: none;
 background-image: none;
 border-radius: 0;
 width: 100%;
}
.forgot-pass-fau a {
    text-decoration: none !important;
    font-size: 14px;
    display:inline;
}
.text-primary-fau {
    color: #1959a2;
    display:inline;
}

.select-form-control-placeholder{
  font-size: 100%;
    padding: 7px 0 0 13px;
    margin: 0;
    
}

.btn span.glyphicon {    			
	opacity: 0;				
}
.btn.active span.glyphicon {				
	opacity: 1;				
}
</style>

<script>
$(function(){
	$("#logout").click(function(){
		top.location.href="./events/logOut.jsp";
	})
});


</script>
</head>
<body>

	<!-- HEADER -->
	<div id="header-main-sticky-wrapper" class="sticky-wrapper"
		style="height: 88px;">
		<header id="header-main">
			<div id="top-bar" class="hidden-xs hidden-sm">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<c:choose>
								<c:when test="${empty sessionScope.userId}">
							 		<div class="top-login">
										<a style="color: black;" data-toggle="modal" data-target="#sem-signup" data-dismiss="modal">회원가입</a>
									</div>
									<div class="top-login">
										<a style="color: black" data-toggle="modal" data-target="#sem-login" data-dismiss="modal">로그인</a>
									</div>
								</c:when>
								<c:otherwise>
									<div class="top-login">
										<a href="#" style="color: black">마이페이지</a>
									</div>
									<div class="top-login">
										<a style="color: black" id="logout">로그아읏</a>
									</div>
									<div class="top-login">
										<a style="padding-top: 13px; color: black"> ${sessionScope.userId}님 반갑습니다.</a>
										<a style="padding-top: 13px; color: purple"> (개인)</a>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="navbar yamm navbar-default">
					<div class="navbar-header">
						<button type="button" data-toggle="collapse"
							data-target="#navbar-collapse-1" class="navbar-toggle">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a href="index.jsp" class="navbar-brand"><img
							src="images/basic/logo.png" width="40" alt=""></a>
					</div>

					<!-- CART / SEARCH -->
					<div class="header-x pull-right">
						<div class="s-cart">
							<div class="sc-trigger">
								<i class="far fa-envelope"></i><span>3</span>
							</div>
							<div class="cart-info">
								<small><em class="highlight">3개의 </em>새로운 쪽지가 있습니다.</small> <br>
								<br>
								<table class="table table-hover">
							<thead>
								<tr>
									<th>번호</th>
									<th>보낸 회원</th>
									<th>내용</th>
									<th>보낸날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>1</th>
									<th>권도훈</th>
									<th>안녕하세요</th>
									<th>11-04 14:12:40</th>
								</tr>
								<tr>
									<th>2</th>
									<th>김승현</th>
									<th>연락주세요.</th>
									<th>11-04 18:20:12</th>
								</tr>
								<tr>
									<th>3</th>
									<th>이승엽</th>
									<th>반갑습니다.</th>
									<th>11-05 11:02:42</th>
								</tr>
							</tbody>
						</table>
								<div style="display:flex;justify-content: center;">
									<div class="cart-btn">
										<a href="#">쪽지함</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="navbar-collapse-1"
						class="navbar-collapse collapse navbar-right">
						<ul class="nav navbar-nav">
							<li class="page-scroll""><a href="index.jsp"
								style="font-family: 'Noto Serif KR', sans-serif; font-size: 1.5em;">홈</a></li>
							<li class="page-scroll"><a href="person.jsp"
								style="font-family: 'Noto Serif KR', sans-serif; font-size: 1.5em;">개인</a></li>
							<li class="page-scroll"><a href="#2"
								style="font-family: 'Noto Serif KR', sans-serif; font-size: 1.5em;">회사</a></li>
							<li class="page-scroll"><a href="#3"
								style="font-family: 'Noto Serif KR', sans-serif; font-size: 1.5em;">스크랩</a></li>
							<li class="page-scroll"><a href="#4"
								style="font-family: 'Noto Serif KR', sans-serif; font-size: 1.5em;">이력서작성</a></li>

						</ul>
					</div>
				</div>
			</div>
		</header>
	</div>



	<!-- 로그인  -->
	<div class="modal fade seminor-login-modal" data-backdrop="static" id="sem-login" style="padding-top:250px;">
		<div class="modal-dialog modal-dialog-centered" style="width:20%">
			<div class="modal-content">

				<!-- Modal body -->
				<div class="modal-body seminor-login-modal-body" >
					<h5 class="modal-title text-center">로그인</h5>
					<button type="button" class="close" data-dismiss="modal">
						<i class="fas fa-times-circle" aria-hidden="true"></i>
					</button>

					
					<form class="seminor-login-form" method="post" action="controller">
						<div class="form-group">
							<input type="text" class="form-control" name="userId" required autocomplete="off"> 
							<label class="form-control-placeholder" for="id">ID</label>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="userPwd" required autocomplete="off"> 
							<label class="form-control-placeholder" for="pwd" >비밀번호</label>
							<input type="hidden" class="form-control" name="command" value="login">
						</div>
					<!-- 	<div class="form-group">
							<label class="container-checkbox"> 내 정보 기억하기 <input type="checkbox" checked="checked" required>
								<span class="checkmark-box"></span>
							</label>
						</div> -->

						<div class="btn-check-log">
							<button type="submit" class="btn-check-login">로그인</button>
						</div>
	
						<br>

						<div class="forgot-pass-fau text-center pt-3">
							<a href="/reset_pass" class="text-secondary">비밀번호 찾기</a>&nbsp;/&nbsp;

							<a href="#" class="text-primary-fau"><span
								data-toggle="modal" data-target="#sem-signup" data-dismiss="modal">회원가입</span></a>
								
						</div>
						<div class="create-new-fau text-center pt-3">
							
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	
	<!-- 로그인  끝-->
	
	
	
	<!-- 회원가입  -->
	<div class="modal fade seminor-login-modal" data-backdrop="static" id="sem-signup" style="padding-top:250px;">
		<div class="modal-dialog modal-dialog-centered" style="width:20%">
			<div class="modal-content">

				<!-- Modal body -->
				<div class="modal-body seminor-login-modal-body" >
					<h5 class="modal-title text-center">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal">
						<i class="fas fa-times-circle" aria-hidden="true"></i>
					</button>


					<form class="seminor-login-form">
						<div class="form-group">
							<input type="text" class="form-control" required autocomplete="off"> 
							<label class="form-control-placeholder" for="id">ID</label>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" required autocomplete="off"> 
							<label class="form-control-placeholder" for="pwd">비밀번호</label>
						</div>
						
						<div class="form-group">
							<input type="text" class="form-control" required autocomplete="off"> 
							<label class="form-control-placeholder" for="phone">연락처(ex. 010-1234-1234)</label>
						</div>
						
						<div class="btn-group" data-toggle="buttons" style="float:right">
							<label class="btn btn-success active">
							<input type="radio" name="options" id="person" autocomplete="off" checked="checked">
							<span>개인회원</span>
							</label>
	
							<label class="btn btn-primary">
							<input type="radio" name="options" id="company" autocomplete="off">
							<span>기업회원</span>
							</label>
						</div>

						<br><br>
						<div class="btn-check-log">
							<button type="submit" class="btn-check-login">회원가입</button>
						</div>
	
					</form>

				</div>
			</div>
		</div>
	</div>
	

</body>
</html>