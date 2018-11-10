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
         <li class="active"><a data-toggle="tab" href="#menu1">회원정보수정</a></li>
         <li><a data-toggle="tab" href="#menu2">이력서 수정</a></li>
      </ul>

      <div class="tab-content">
         <div id="menu1" class="tab-pane fade in active">
            <form method="post" action="#">
               <div class="row" style="padding-top: 20px; padding-left: 42%">
                  <div class="row">
                     <div class="form-group col-md-4 col-sm-4">
                        <div class="text-center" style="float: left">
                           <h4>ID</h4>
                        </div>
                        <label class="sr-only" for="id"></label> <input
                           class="form-control input-lg" name="id" id="id"
                           value="PERSON01" type="text" disabled="disabled">
                     </div>
                  </div>
                  <div class="row">
                     <div class="form-group col-md-4 col-sm-4">
                        <div class="text-center" style="float: left">
                           <h4>Password</h4>
                        </div>
                        <label class="sr-only" for="password"></label> <input
                           class="form-control input-lg" name="password" id="password"
                           value="4321" type="password">
                     </div>
                  </div>
                  <div class="row">
                     <div class="form-group col-md-4 col-sm-4">
                        <div class="text-center" style="float: left">
                           <h4>전화번호</h4>
                        </div>
                        <label class="sr-only" for="phone"></label> <input
                           class="form-control input-lg" name="phone" id="phone"
                           value="010-1234-1234" type="text">
                     </div>
                  </div>
               </div>
               <div class="row">
                  <input class="button btn-md" value="수정하기" type="submit"
                     style="margin: 20px auto;">

               </div>
            </form>
         </div>


         <div id="menu2" class="tab-pane fade">
            <div class="container" style="width: 90%;">
               <form method="post" action="#">
                  <div class="panel-group" id="accordion-e1">
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h4 class="panel-title">
                              <a class="accordion-toggle" data-toggle="collapse"
                                 data-parent="#accordion-e1" href="#collapse1">
                                 <h4>기본정보</h4> <span class="fa fa-chevron-down"></span>
                              </a>
                           </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in">
                           <div class="panel-body">
                              <div class="row">
                                 <div class="space-top">
                                    <div>
                                       <img id="thumbnail"
                                          src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
                                          class="avatar img-circle img-thumbnail"
                                          style="cursor: pointer" alt="avatar">
                                       <script>
                                          $(function() {
                                             $("#thumbnail")
                                                   .click(
                                                         function() {
                                                            $(
                                                                  "input[type=file]")
                                                                  .css(
                                                                        "display",
                                                                        "inline-block");
                                                         });
                                          });
                                       </script>
                                    </div>
                                    <input type="file"
                                       class="text-center center-block file-upload"
                                       style="display: none;">
                                    <div class="row" style="padding-top: 20px;">

                                       <div class="form-group col-md-4 col-sm-4">
                                          <label class="sr-only" for="name"></label> <input
                                             class="form-control input-lg" name="name" id="name"
                                             placeholder="이름" required="" type="text">
                                       </div>

                                       <div class="form-group col-md-4 col-sm-4">
                                          <label class="sr-only" for="email"></label> <input
                                             class="form-control input-lg" name="email" id="email"
                                             placeholder="이메일" required="" type="email">
                                       </div>
                                    </div>
                                    <div class="row">
                                       <div class="form-group col-md-4 col-sm-4">
                                          <label class="sr-only" for="age"></label> <input
                                             class="form-control input-lg" name="age" id="age"
                                             placeholder="나이" required="" type="text">
                                       </div>
                                       <div class="form-group col-md-4 col-sm-4">
                                          <label class="sr-only" for="birth"></label> <input
                                             class="form-control input-lg" name="birth" id="birth"
                                             placeholder="생년월일    ex)19890907" required="" type="text">
                                       </div>
                                    </div>
                                    <div class="row">
                                       <label class="sr-only" for="sex"></label> <select
                                          class="form-control"
                                          style="width: 100px; cursor: pointer; margin-left: 16px; display: inline-block;"
                                          name="sex">
                                          <option>성별</option>
                                          <option value="남자">남자</option>
                                          <option value="여자">여자</option>
                                       </select> <label class="sr-only" for="new_old"></label> <select
                                          class="form-control"
                                          style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;"
                                          name="new_old">
                                          <option>경력 여부</option>
                                          <option value="신입">신입</option>
                                          <option value="경력">경력</option>
                                       </select> <label class="sr-only" for="status"></label> <select
                                          class="form-control"
                                          style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;"
                                          name="status">
                                          <option>구직 여부</option>
                                          <option value="구직중">구직중</option>
                                          <option value="재직중">재직중</option>
                                       </select> <label class="sr-only" for="occupation"></label> <select
                                          class="form-control"
                                          style="width: 120px; cursor: pointer; margin-left: 16px; display: inline-block;"
                                          name="occupation">
                                          <option>분야</option>
                                          <option value="SW개발">SW개발</option>
                                          <option value="HW개발">HW개발</option>
                                          <option value="게임개발">게임개발</option>
                                          <option value="디자인">디자인</option>
                                          <option value="기획/PM">기획/PM</option>
                                          <option value="마케팅">마케팅</option>
                                          <option value="운영">운영</option>
                                          <option value="경영지원">경영지원</option>
                                          <option value="비즈니스">비즈니스</option>
                                          <option value="투자">투자</option>
                                       </select>

                                    </div>
                                    <div class="space20"></div>
                                 </div>
                              </div>
                           </div>
                        </div>




                        <div class="panel-heading">
                           <h4 class="panel-title">
                              <a class="accordion-toggle" data-toggle="collapse"
                                 data-parent="#accordion-e1" href="#collapse2">
                                 <h4>경력사항</h4> <span class="fa fa-chevron-down"></span>
                              </a>
                           </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse in">
                           <div class="panel-body">
                              <div class="row">

                                 <div class="form-group col-md-10 col-sm-10">
                                    <textarea class="form-control" rows="10"
                                       name="carrer_content" id="carrer_content"
                                       placeholder="500자 이내로 경력사항을 입력하세요." maxlength="500"
                                       style="resize: none; wrap: hard;"></textarea>
                                    <script type="text/javascript" language="javascript"
                                       src="./js/charcount.js"></script>
                                 </div>

                              </div>
                           </div>
                        </div>


                        <div class="panel-heading">
                           <h4 class="panel-title">
                              <a class="accordion-toggle" data-toggle="collapse"
                                 data-parent="#accordion-e1" href="#collapse3">
                                 <h4>자기소개서</h4> <span class="fa fa-chevron-down"></span>
                              </a>
                           </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse in">
                           <div class="panel-body">
                              <div class="row">
                                 <div class="form-group col-md-10 col-sm-10">
                                    <label class="sr-only" for="title"></label> <input
                                       class="form-control input-lg" name="intro_title"
                                       id="intro_title" placeholder="제목을 입력하세요." required=""
                                       type="text">
                                 </div>
                                 <div class="form-group col-md-10 col-sm-10">
                                    <textarea class="form-control" rows="10"
                                       name="intro_content" id="intro_content"
                                       placeholder="1000자 이내로 자기소개를 작성하세요." maxlength="500"
                                       style="resize: none; wrap: hard;"></textarea>
                                    <script type="text/javascript" language="javascript"
                                       src="./js/charcount.js"></script>
                                 </div>
                              </div>
                           </div>
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