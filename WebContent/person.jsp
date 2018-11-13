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

<script>
$(function(){
	$("#person_msg").click(function(){
		alert(11);
	});
	
	
})
		
										
</script>


</head>
<body>
<!-- <body onload="window.location.href='controller?command=resumeSelectAll'"> -->

	<div class="outer-wrapper">
		<!-- Header !-->
		<%@ include file="view/header.jsp"%>

		<!-- PAGE HEADER -->
		<div class="page_header">
			<div class="page_header_parallax">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3>
								<span>개인</span>Present <br>your work experience
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
							<li><a href="#">웹개발</a> <i class="icon-plus2"></i></li>
							<li><a href="#">응용프로그램개발</a> <i class="icon-plus2"></i></li>
							<li><a href="#">시스템개발</a> <i class="icon-plus2"></i></li>
							<li><a href="#">인공지능(AI)/빅데이터</a> <i class="icon-plus2"></i></li>
							<li><a href="#">학생/무직</a> <i class="icon-plus2"></i></li>
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
				</aside>




				
				<!-- List -->
				<h4 class="space30">Person Posts</h4>
				<c:forEach items="${list}" var="itms">	
			
				<div class="col-md-3 cardz" style="padding: 0 30px 40px 10px !important;">
						<div class="card">
							<div class="card-img" align="center">
								<img class="img-responsive avatar img-thumbnail" src="save/person/${itms.personImg}" style="cursor: pointer" 
									 width="150px" height="150px" onError="javascript:this.src='img/man-default.jpg'">
							</div>
							<div class="card-block">
								<form onclick="submit()" action="controller">
								<input type="hidden" name="command" value="resumeSelectbypersonId">
								<input type="hidden" name="personId" value='${itms.personId}'>
								<div class="card-title">
									<h4>${itms.personName}</h4>
								</div>
								<div class="card-text">
									<span>${itms.personCareer}</span><span>&nbsp; / &nbsp;</span><span>${itms.personOccupation }</span>
								</div>
								<div class="card-icons">
									<h5 style="width: auto; height: 30px; overflow: hidden;">
										${itms.personSelfIntroductionTitle}
										</h5>
								</div>
								</form>
								<hr>								
								<c:choose>
									<c:when test="${perOrCom=='Company'}">
									<div class="card-footer">
									<ul class="list-inline">
										<li>
										<a href="#" style="cursor: pointer;border: 1px solid #ccc; border-radius: 15px; padding: 5px;"  data-toggle="modal" data-target="#send" data-dismiss="modal">
										<i class="far fa-envelope-open"></i>쪽지보내기</a></li>
										
										<li class="pull-right">
										<a href="controller?command=scrapPerson&targetId=${itms.personId}" style="cursor: pointer;border: 1px solid #ccc; border-radius: 15px; padding: 5px;">
										<i class="far fa-heart"></i>스크랩</a></li>
									</ul>
									</div>
									
									
									
									
									</c:when>
									<c:otherwise> <!-- 개인이 로그인했을때는 다른개인에게 쪽지보내기/스크랩불가 -->
									<div class="card-footer">
									<ul class="list-inline">
										<li>
										<a href="#" style="cursor: pointer;border: 1px solid #ccc; border-radius: 15px; padding: 5px;" id="person_msg">
										<i	class="far fa-envelope-open"></i>쪽지보내기</a></li>
										
										<li class="pull-right">
										<a href="#"	style="cursor: pointer;border: 1px solid #ccc; border-radius: 15px; padding: 5px;" id="person_scrap">
										<i class="far fa-heart"></i>스크랩</a></li>
										
										
									</ul>
									</div>								
									</c:otherwise>
									</c:choose>
								
							</div>
						</div>	
					</div>
					
					<div class="modal fade" id="send" tabindex="-1" role="dialog"
					aria-labelledby="send" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document"
						style="width: 400px; margin-top: 300px;">
						<div class="modal-content">
							<div class="container">
								<div class="row">
									<div class="col-sm-4 col-md-4">
										<div class="panel panel-default">
											<div class="panel-body">
												<h4>쪽지보내기 (TO: ${itms.personName})</h4>
												<form action="controller?command=sendMessage&sendId=${itms.personId}" method="post">
													<textarea class="form-control counted" name="messageContents"
														placeholder="메세지를 입력하세요." rows="5"
														style="margin-bottom: 10px; resize: none; wrap: hard;"
														maxlength="50"></textarea>
													<script type="text/javascript" language="javascript"
														src="./js/charcount.js"></script>
													<button class="btn btn-info" type="submit">쪽지보내기</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
					
					</c:forEach>
						


					<div class="sorter" style="margin: auto;left:-15px;float:right;">
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