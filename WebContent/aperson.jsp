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
	<div class="inner-content" style="padding-top:40px">
		<div class="container" style="border:1px solid #ccc;width:700px">
			<div class="row">
				<div class="col-md-8 col-md-offset-2" style="padding:40px 0 0 0">
					<h3 class="uppercase space30">구직자 정보</h3>
					<div class="space-top">
						<form method="post" class="contact-form">

							<div class="text-center" style="display: inline-block;">
								<img id="thumbnail"
									src="save/person/${dto.personImg}"
									onError="javascript:this.src='img/man-default.jpg'"
									width="150px" height="150px"
									class="avatar img-circle img-thumbnail"
									style="cursor: pointer" alt="avatar">
									
							
							</div>
							<input type="file" class="text-center center-block file-upload"	style="display: none;">
							
							
							<div class="row" style="padding-top:20px;">
								<div class="form-group col-md-4 col-sm-4">
									<label class="sr-only" for="name"></label> 
									<input
										class="form-control input-lg" name="name" id="name"
										placeholder="이름" required="" value=${dto.personName} readonly="readonly">
								</div>
								<div class="form-group col-md-8 col-sm-8">
									<label class="sr-only" for="email"></label> <input
										class="form-control input-lg" name="email" id="email"	
										placeholder="이메일" required="" type="email" value=${dto.personEmail} readonly="readonly">
								</div>
							</div>
							
							<div class="row">
								<div class="form-group col-md-4 col-sm-4">
									<label class="sr-only" for="age"></label> <input
										class="form-control input-lg" name="age" id="age"
										placeholder="나이" required="" type="text" value=${dto.personAge} readonly="readonly">
								</div>
								<div class="form-group col-md-4 col-sm-4">
									<label class="sr-only" for="birth"></label> <input
										class="form-control input-lg" name="birth" id="birth"
										placeholder="생년월일    ex)19890907" required="" type="text" value=${dto.personBirth} readonly="readonly">
								</div>

								<div class="form-group col-md-4 col-sm-4">
									<label class="sr-only" for="location"></label> 
									<input
										class="form-control input-lg" name="location" id="location"
										placeholder="희망 근무 지역" required="" type="text" value=${dto.personHopePlace} readonly="readonly">
								</div>
							</div>


							<div class="row">
								<div class="form-group col-md-4 col-sm-4">
									<label class="sr-only" for="sex"></label> 
									<input class="form-control input-lg" name="sex" id="sex"
										type="text" value=${dto.personSex} readonly="readonly">
								</div>

								<div class="form-group col-md-4 col-sm-4">
									<label class="sr-only" for="personCareer"></label> 
									<input class="form-control input-lg" name="personCareer" id="personCareer" 
										type="text" value=${dto.personCareer} readonly="readonly">
								</div>

								<div class="form-group col-md-4 col-sm-4">
									<label class="sr-only" for="personJobStatus"></label> 
									<input class="form-control input-lg" name="personJobStatus" id="personJobStatus" 
										type="text" value=${dto.personJobStatus} readonly="readonly">
								</div>
							</div>

							<div class="space20"></div>

							<div class="row">
								<!-- <div class="form-group col-md-12 col-sm-12">
									<input class="form-control input-lg" name="title" id="title"
										placeholder="제목을 입력하세요." required="" type="text" style="resize:none;wrap:hard;">
								</div> -->

								<div class="form-group col-md-12 col-sm-12">
									<textarea class="form-control" rows="10" name="content" id="content" placeholder="1000자 이내로 경력 혹은 자기소개를 입력하세요." 
													maxlength="1000" style="resize:none;wrap:hard;" readonly="readonly"></textarea>
									<script type="text/javascript" language="javascript" src="./js/charcount.js"></script> 
								</div>
							</div>


							<!-- <input class="button btn-md" value="전송" type="submit"> -->
						</form>
						<div class="space40"></div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- FOOTER COPYRIGHT -->
	<%@ include file="view/footer.jsp"%>
	
	
</body>
</html>