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
						src="save/company/${list.companyImg}"
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
					<h2 style="padding-bottom:20px;">${list.companyName}</h2>

				</div>
			</div>
		</div>
		<div class="container">
			<div class="row" style="display: flex; justify-content: center;">
				<table style="width:50%;height:200px;">
					<tr>
					<td style="color:#8c8c8c;">카테고리</td>
					<td style="color:#3399ff;">${list.companyCategory}</td>
					<td style="color:#8c8c8c;">설립일</td>
					<td style="color:#3399ff;">${list.companyEstblish}</td>
					</tr>
					<tr>
					<td style="color:#8c8c8c;">대표</td>
					<td style="color:#3399ff;">${list.companyCeo}</td>
					<td style="color:#8c8c8c;">직원수</td>
					<td style="color:#3399ff;">${list.companyEmployees}명</td>
					
					</tr>
					<tr>
					<td style="color:#8c8c8c;">규모</td>
					<td style="color:#3399ff;">${list.companyType}</td>
					<td style="color:#8c8c8c;">홈페이지</td>
					<td style="color:#3399ff;">${list.companyPage}</td>
					
					</tr>
					<tr>
					<td style="color:#8c8c8c;">주소</td>
					<td style="color:#3399ff;">${list.companyHeadAddr}</td>
					<td style="color:#8c8c8c;">연락처</td>
					<td style="color:#3399ff;">${list.companyPhone}</td>
					</tr>
					<tr>
					<td colspan="4"><a href="controller?command=companyRecruitSelectByCompanyName&companyName=${list.companyName}" style="float:right;">채용공고 보러가기</a></td>
					</tr>
				</table>		
			</div>
		</div>
	</div>


	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>
</body>
</html>