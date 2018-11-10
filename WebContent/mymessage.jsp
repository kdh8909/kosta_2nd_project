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
							<th class="text-center" style="width: 5%">확인</th>
							<th class="text-center" style="width: 5%">삭제</th>
						</tr>
					</thead>

					<tr>
						<td>1</td>
						<td>PERSON01</td>
						<td>에라 모르겠다</td>
						<td>2018.11.10 15:01:25</td>
						<td class="text-center"><a href="#"
							class="btn btn-warning btn-xs">보내기</a></td>
						<td class="text-center"><a href="#"
							class="btn btn-info btn-xs">안읽음</a></td>   <!-- <td class="text-center"><a href="#"	class="btn btn-success btn-xs">읽음</a></td> -->
						<td class="text-center"><a href="#"
							class="btn btn-danger btn-xs">삭제</a></td>
					</tr>

					<tr>
						<td>1</td>
						<td>PERSON01</td>
						<td>에라 모르겠다</td>
						<td>2018.11.10 15:01:25</td>
						<td class="text-center"><a href="#"
							class="btn btn-warning btn-xs">보내기</a></td>
						<td class="text-center"><a href="#"
							class="btn btn-success btn-xs">읽음</a></td>
						<td class="text-center"><a href="#"
							class="btn btn-danger btn-xs">삭제</a></td>
					</tr>




				</table>
			</div>
		</div>
	</div>



	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>


</body>
</html>