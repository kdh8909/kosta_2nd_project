<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert Title</title>

<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

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

	<!-- SKIN -->
	<link rel="stylesheet" href="css/color-scheme/default-blue.css" type="text/css">

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
							<span>스크랩</span>Keep <br>your interest!
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
							<li><a href="#">스크랩</a></li>
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
			<div class="row" style="margin-bottom:30px;">
				<h3 class="uppercase text-center">스크랩</h3>
			</div>
			
		<c:choose>
		<c:when test="${perOrCom=='Company'}">
		
				<c:forEach items="${list}" var="itms">
				<div class="panel-group" id="accordion-e1">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-e1" href="#collapse${state.count }">
							<h5>성명 : ${itms.name}</h5>
							<span class="fa fa-chevron-down"></span>
							</a>
						</h4>
					</div>
					<div id="#collapse${state.count }" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<p>스크랩된 개인 표출할 내용 없는디</p> 
							</div>
						</div>
					</div>
				</div>
			</div>
				</c:forEach>
							
		</c:when>			
		<c:otherwise>
				<c:forEach items="${list}" var="itms" varStatus="state">
				<div class="panel-group" id="accordion-e1">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a class="accordion-toggle" id="aa${state.count }" data-toggle="collapse" data-parent="#accordion-e1" href="#collapse${state.count }">
							<h5>회사명 : ${itms.companyName}</h5> <h5>분류 : ${itms.companyType}</h5>
							<h5>전화번호 : ${itms.companyPhone}</h5><h5> 홈페이지 : ${itms.companyPage}</h5>
							<input type="hidden" id="hidden${state.count }" value="${itms.companyName}">
							<span class="fa fa-chevron-down"></span>
							</a>
						</h4>
					</div>
					
					<script type="text/javascript">
					
					$(document).ready(function(){
						
						$("#aa${state.count }").click(function(){
	
 							$.ajax({url : "./companyRecruitInfo" //서버요청주소
								  , type : "post" // get or post 방식
								  , dataType : "json" //서버가 보내오는 데이터 타입
								  , data : "companyName="+$("#hidden${state.count }").val() //서버에게 보내는 parameter 정보
								  , success : function(result){
									  
									   var str = "";
									  
										$.each(result,function(index, item){
											str += item.recruitTilte + "&nbsp;&nbsp;" + " ~ " +item.recruitDeadline +"<br>";
										});

									  $("#text${state.count }").html(str);
								  }
								  , error : function(err){
									  console.log(err);
								  }
							});

						});

					});
					
					</script>
					
					
					<div id="collapse${state.count }" class="panel-collapse collapse in">
						<div class="panel-body">
							<div class="row">
								<p id="text${state.count }"> </p> 
							</div>
						</div>
					</div>
				</div>
				</div>
				</c:forEach>
		</c:otherwise>
		</c:choose>	
				
		
				
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
<script src="js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
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