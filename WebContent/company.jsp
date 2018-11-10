<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Title</title>
<style>
i {
	color: #dd0000;
	padding-right: 5px;
}

h4 {
	font-weight: 600;
	color: #dd0000;
}

a:hover {
	text-decoration: none;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 100%;
	border-radius: 0px;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.card-block {
	padding: 15px;
}

.card-img {
	border-radius: 0px 0px 0 0;
	max-height: 180px;
	overflow: hidden;
}

.card-text>span {
	color: #868e96;
}

.out-border {
	border: 1px solid #e2e2e2;
	border-radius: 10px 10px;
}
</style>
</head>
<body>
	<!-- <body onload="window.location.href='controller?command=resumeSelectAll'"> -->

	<div class="outer-wrapper">
		<!-- Header !-->
		<%@ include file="view/header.jsp"%>

		<!-- PAGE HEADER -->
		<div class="page_header">
			<div class="page_header_parallax3">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3>
								<span>회사</span>Show <br>your company
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
								<li>개인</li>
							</ul>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Left Side -->
		<div class="inner-content">
			<div class="container">

				<aside class="col-sm-3 ">
					<div class="side-widget space50">
						<h4>검색</h4>
						<form role="form" class="search-widget">
							<input class="form-control" type="text">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
					<div class="side-widget space50">
						<h4>분류</h4>
						<ul class="list-unstyled cat-list">
							<li><a href="#">경영/기획</a> <i class="icon-plus2"></i></li>
							<li><a href="#">사무</a> <i class="icon-plus2"></i></li>
							<li><a href="#">IT</a> <i class="icon-plus2"></i></li>
							<li><a href="#">영업</a> <i class="icon-plus2"></i></li>
							<li><a href="#">서비스</a> <i class="icon-plus2"></i></li>
						</ul>
					</div>
					<div class="side-widget space50">
						<h4>인기 Post</h4>
						<ul class="list-unstyled popular-post">
							<li>
								<div class="popular-img">
									<a href="#"> <img src="images/blog/1/1.jpg"
										class="img-responsive" alt=""></a>
								</div>
								<div class="popular-desc">
									<h5>
										<a href="#">IT</a>
									</h5>
									<span>kdh</span>
								</div>
							</li>
							<li>
								<div class="popular-img">
									<a href="#"> <img src="images/blog/1/2.jpg"
										class="img-responsive" alt=""></a>
								</div>
								<div class="popular-desc">
									<h5>
										<a href="#">경영/기획</a>
									</h5>
									<span>abc1234</span>
								</div>
							</li>
							<li>
								<div class="popular-img">
									<a href="#"> <img src="images/blog/1/3.jpg"
										class="img-responsive" alt=""></a>
								</div>
								<div class="popular-desc">
									<h5>
										<a href="#">서비스</a>
									</h5>
									<span>qwer9876</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="side-widget">
						<h4>Tag Cloud</h4>
						<div class="tag-list">
							<a href="#">Design</a> <a href="#">Photo</a> <a href="#">News</a>
							<a href="#">Fashion</a> <a href="#">Marketing</a> <a href="#">video</a>
							<a href="#">vector</a> <a href="#">Photoshop</a>
						</div>
					</div>
				</aside>


				<!-- List -->
				<div class="col-md-9" style="padding: 5px 5px 5px 30px;">
					<h4 class="space30">Company Posts</h4>
					
					<c:forEach items="${list}" var="itms">
					
					<div class="col-md-11"
						style="border: 1px solid #ccc; border-radius: 5px; padding: 0px;margin-bottom:20px">
						<div class="col-md-4" style="padding: 0px; overflow: hidden;">
							<a href="#"><img
								src="https://ncc-phinf.pstatic.net/20140428_40/13986431939845C2qH_JPEG/1-1.jpg?type=w646"
								style="width: 220px; height: 220px"></a>
						</div>
						
						<div class="col-md-8" style="margin-bottom:20px;">
							<a href="controller?command=companyRecruitSelectByCompanyName&companyName=${itms.companyName}">
							<h3>${itms.companyName}</h3> </a>
							<ul style="list-style: none;">
								<li style="float: left; padding-right: 10px"><h4>${itms.companyCategory}</h4></li><br>
								<li style="float: left; padding-right: 10px"><h5>${itms.companyType}&nbsp;/&nbsp;
								${itms.companyHeadAddr}&nbsp;/&nbsp;
								${itms.companyPhone}&nbsp;/&nbsp;${itms.companyPage}</h5></li>
							</ul>
						</div>
						<div class="col-md-8">
							<div class="card-icons">
								<h5 style="width: auto; height: 30px; overflow: hidden;">
									간단한 회사소개
									</h4>
							</div>
						</div>
						<div class="col-md-8">
							<ul>
								<li><a style="cursor: pointer;">
								<i class="far fa-envelope-open"></i>쪽지보내기</a></li>
								<li><a
									style="cursor: pointer;"><i class="far fa-heart"></i>스크랩</a></i></li>
							</ul>
						</div>
					</div>
					</c:forEach>

<%-- 					<div class="col-md-11"
						style="border: 1px solid #ccc; border-radius: 5px; padding: 0px">
						<div class="col-md-4" style="padding: 0px; overflow: hidden;">
							<a href="#"><img
								src="https://ncc-phinf.pstatic.net/20140428_40/13986431939845C2qH_JPEG/1-1.jpg?type=w646"
								style="width: 220px; height: 220px"></a>
						</div>
						<div class="col-md-8" style="margin-bottom:20px;">
							<a href="#"><h3>${itms.companyName}</h3> </a>
							<ul style="list-style: none;">
								<li style="float: left; padding-right: 10px">Companyceo</li>
								<li style="float: left; padding-right: 10px">CompanyType</li>
								<li style="float: left;">CompanyHeadAddr</li>
							</ul>
						</div>
						<div class="col-md-8">
							<div class="card-icons">
								<h5 style="width: auto; height: 30px; overflow: hidden;">
									간단한 자기소개 2줄짜리 넘어가면 hover시 보이게 하기 간단한 자기소개 2줄짜리 넘어가면 hover시 보이게
									하기
									</h4>
							</div>
						</div>
						<div class="col-md-8">
							<ul>
								<li><a style="cursor: pointer;">
								<i class="far fa-envelope-open"></i>쪽지보내기</a></li>
								<li><a
									style="cursor: pointer;"><i class="far fa-heart"></i>스크랩</a></i></li>
							</ul>
						</div>
					</div> --%>



				</div>

				<div class="sorter" style="margin: auto; left: -15px;">
					<div class="col-md-12">
						<ul class="shop_pn">
							<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
							<li><a class="active" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
				</div>



				<!-- List End -->
			</div>
		</div>
	</div>

	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>
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