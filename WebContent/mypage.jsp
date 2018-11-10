<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert Title</title>
<link
   href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script
   src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
   $(function() {
      console.log("메인-shell");
   });
</script>
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
                     <span>마이페이지</span><br>
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
                     <li><a href="#">마이페이지</a></li>
                  </ul>
                  <div class="clearfix"></div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- INNER CONTENT    -->

   <div class="container" style="padding-bottom:50px;">
      <h3 class="uppercase text-center" style="padding: 30px">마이페이지</h3>

      <ul class="nav nav-tabs">
         <li><a data-toggle="tab" href="#menu1">회원정보수정</a></li>
      </ul>

      <div class="tab-content">
         <div id="menu1" class="tab-pane fade in active">
            <form method="post" action="controller?command=updatePersonLogin">
               <div class="row" style="padding-top: 20px; padding-left: 42%">
                  <div class="row">
                     <div class="form-group col-md-4 col-sm-4">
                        <div class="text-center" style="float: left">
                           <h4>ID</h4>
                        </div>
                        <label class="sr-only" for="id"></label> <input
                           class="form-control input-lg" name="personId" id="id"
                           value=${userId} } type="text" disabled="disabled">
                     </div>
                  </div>
               
                  <div class="row">
                     <div class="form-group col-md-4 col-sm-4">
                        <div class="text-center" style="float: left">
                           <h4>Password</h4>
                        </div>
                        <label class="sr-only" for="password"></label> <input
                           class="form-control input-lg" name="personPwd" id="password"
                           value=${personPwd} type="password">
                     </div>
                  </div>
                  <div class="row">
                     <div class="form-group col-md-4 col-sm-4">
                        <div class="text-center" style="float: left">
                           <h4>전화번호</h4>
                        </div>
                        <label class="sr-only" for="phone"></label> <input
                           class="form-control input-lg" name="personPhone" id="phone"
                           value=${personPhone} type="text">
                     </div>
                  </div>
               </div>
               <div class="row">
                  <input class="button btn-md" value="수정하기" type="submit"
                     style="margin: 20px auto;">

               </div>
            </form>
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