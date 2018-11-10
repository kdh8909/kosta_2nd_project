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
		console.log("메인-shell");
	});
</script>
<style>
.custab {
	border: 1px solid #ccc;
	padding: 5px;
	margin: 5% 0;
	box-shadow: 3px 3px 2px #ccc;
	transition: 0.5s;
}

.custab:hover {
	box-shadow: 3px 3px 0px transparent;
	transition: 0.5s;
}
</style>
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
							<span>쪽지함</span>Send <br>Message
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
							<li><a href="#">쪽지함</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- INNER CONTENT	 -->
	<div class="inner-content" style="padding-top: 40px">
		<div class="container" style="border: 1px solid #ccc; width: 1000px">

			<div class="row col-md-12 col-md-offset-2 custyle" style="margin: 0;">
				<h3 style="float: left">받은쪽지</h3>
				<table class="table table-striped custab">
					<thead>
						<tr>
							<th style="width: 5%;">번호</th>
							<th style="width: 10%">보낸사람</th>
							<th style="width: 50%;">내용</th>
							<th style="width: 10%">날짜</th>
							<th class="text-center" style="width: 5%">답장</th>
							<th class="text-center" style="width: 5%">삭제</th>
						</tr>
					</thead>

					<tr>
						<td>1</td>
						<td>PERSON01</td>
						<td><a style="color:black;"data-toggle="modal" data-target="#send"
							data-dismiss="modal">에라 모르겠다</a></td>
						<td>2018.11.10 15:01:25</td>
						<td class="text-center"><a class="btn btn-warning btn-xs"
							data-toggle="modal" data-target="#send" data-dismiss="modal">보내기</a></td>
						<td class="text-center"><a href="#"
							class="btn btn-danger btn-xs">삭제</a></td>
					</tr>


				</table>


				<!-- Modal -->
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
												<h4>쪽지보내기</h4>
												<form action="" method="post">
													<textarea class="form-control counted" name="message"
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