<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert Title</title>

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
							<span>회사정보</span>Check<br>your Company!
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
							<li><a href="#">회사</a></li>
							<li><a href="#">정보</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- INNER CONTENT	 -->
	<div class="inner-content" style="padding-top: 40px">
		<div class="container" style="border: 1px solid #ccc;">
			<div class="row">
				<div class="col-md-8 col-md-8" style="padding: 40px 0 0 0">
					<h3 class="uppercase space30">${companyName}</h3>
					<div class="space-top"></div>
					
				</div>
			</div>
		</div>
	</div>


	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>
</body>
</html>