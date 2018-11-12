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
	
		<div class="container" style="display: flex; justify-content: center;">

			<div class="row">
				<div class="col-md-12 col-md-12" style="padding: 40px 0 0 0;">
					<img id="thumbnail"
						src="https://pbs.twimg.com/profile_images/459505368234606592/nuxaaQoo_400x400.jpeg"
						class="avatar img-circle img-thumbnail"
						style="width: 200px; height: 200px; margin: 15px;display:block;float:left" alt="avatar"
						data-toggle="tooltip" data-placement="top">
				</div>
			</div>
			
			
			
			
		</div>
		
		<div class="container">
			<div class="text-center">
				<%-- save/company/${companyImg} --%>
				<div class="col-md-12 col-md-12" style="padding:0;">
					<h2 style="padding-bottom:20px;">${companyName}</h2>

				</div>
			</div>
		</div>
		<div class="container">
			<div class="row" style="display: flex; justify-content: center;">
				<table style="width:50%;height:200px;">
					<tr>
					<td style="color:#8c8c8c;">카테고리</td>
					<td style="color:#3399ff;">응용프로그램개발</td>
					<td style="color:#8c8c8c;">설립일</td>
					<td style="color:#3399ff;">1999.05</td>
					</tr>
					<tr>
					<td style="color:#8c8c8c;">대표</td>
					<td style="color:#3399ff;">권도훈</td>
					<td style="color:#8c8c8c;">직원수</td>
					<td style="color:#3399ff;">320명</td>
					
					</tr>
					<tr>
					<td style="color:#8c8c8c;">규모</td>
					<td style="color:#3399ff;">중견</td>
					<td style="color:#8c8c8c;">홈페이지</td>
					<td style="color:#3399ff;">http://edu.kosta.or.kr</td>
					
					</tr>
					<tr>
					<td style="color:#8c8c8c;">주소</td>
					<td style="color:#3399ff;">경기도 성남시 분당구 대왕판교로 670</td>
					<td style="color:#8c8c8c;">연락처</td>
					<td style="color:#3399ff;">02-157-7777</td>
					</tr>
				</table>		
			</div>
		</div>
		
		<div class="container">
		<a href="company_recruit.jsp">채용공고 보러가기</a>
			
		</div>
	</div>


	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>
</body>
</html>