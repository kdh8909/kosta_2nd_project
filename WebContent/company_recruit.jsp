<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
							<span>채용공고</span>Recruit<br>
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
							<li><a href="#">채용공고</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- INNER CONTENT -->

	<div class="inner-content" style="padding-top:30px;">
		<div class="container">
			<div class="row">
				<h3 class="uppercase text-center">채용공고</h3>
			</div>
			<div class="space30"></div>
		</div>
		
		
		<c:forEach items="${list}" var="itms">
		<div class="container">
			<div class="row" style="width:50%;">
			<div class="container">
			<div class="row" style="display: flex; justify-content: center;">
				<table id="recruit_table" style="border-radius:10px;">
					<tr>
					<td colspan="3" style="height:50px;"><h3 style="padding:0;margin:0;border-bottom:1px solid black;">${itms.recruitTilte}</h3></td>
					<td style="padding-left:50px;">
					<ul class="list-inline">
						<li class="pull-right">
						<a href="#" style="cursor: pointer;border: 1px solid #ccc; border-radius: 15px; padding: 5px;color:skyblue;" data-toggle="modal" data-target="#senda" data-dismiss="modal">
						<i	class="far fa-envelope-open" style="color:red;"></i>쪽지보내기</a></li>	
						<li class="pull-right">
						<a href="#"	style="cursor: pointer;border: 1px solid #ccc; border-radius: 15px; padding: 5px;color:skyblue;">
						<i class="far fa-heart" style="color:red;"></i>스크랩</a></li>
					</ul>
					</td>
					</tr>
				
					<tr>
					<td style="color:#8c8c8c;padding:0;">모집번호</td>
					<td style="color:#3399ff;padding:0;">${itms.recruitNumber}</td>
					<td style="color:#8c8c8c;padding:0;">지역</td>
					<td style="color:#3399ff;padding:0;">${itms.companyWorkAddr}</td>
					</tr>
					<tr>
					<td style="color:#8c8c8c;">고용형태</td>
					<td style="color:#3399ff;">${itms.companyEmploymentType}</td>
					<td style="color:#8c8c8c;">급여</td>
					<td style="color:#3399ff;">${itms.companySalary}만원</td>
					
					</tr>
					<tr>
					<td style="color:#8c8c8c;">분야</td>
					<td style="color:#3399ff;">${itms.companyCareer}</td>
					<td style="color:#8c8c8c;">학력</td>
					<td style="color:#3399ff;">${itms.companyEducation}</td>
					
					</tr>
					<tr>
					<td style="color:#8c8c8c;">마감일</td>
					<td style="color:#3399ff;">${itms.recruitDeadline}</td>
					<td style="color:#8c8c8c;"></td>
					<td style="color:#3399ff;"></td>
					</tr>
				</table>

				</div>
				</div>	
			</div>
		</div>
		<div class="space30"></div>
		</c:forEach>
	</div>

	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>

</body>
</html>