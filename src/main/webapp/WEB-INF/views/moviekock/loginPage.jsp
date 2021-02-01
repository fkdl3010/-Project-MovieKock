<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
  <link rel="stylesheet" href="/movie/assets/style/loginPage.css"/>
</head>
<body>
  <div class="main-wrapper">
    <div class="logo">
      <a href="#"><i class="fas fa-video fa-5x"></i></a>
    </div>
    <div class="header">
      <div class="heading">로그인</div>
      <div class="heading-contents">무비콕에 오신 걸 환영합니다.</div>
    </div>
    <div class="control-form">
      <form action="" class="login-form">
        <input type="text" class="login-input"name="id" placeholder="로그인" />
        <input type="password" class="login-input" name="pw" placeholder="비밀번호" />
        <input type="checkbox" name="rememberId" id="rememberId"/>
        <label for="rememberId">아이디 저장</label>
        <button class="login-btn">로그인</button>

      </form>

    </div>
    <div class="footer">
      <a href="#"><span class="footer-link id-pw">아이디 / 비밀번호 찾기</span></a>
      <a href="#" data-target="#layerpop" data-toggle="modal"><span class="footer-link signUp">회원가입</span></a>
      

    </div>
  </div>

  <!-- modal -->
  <div class="modal fade" id="layerpop" >
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- header -->
        <div class="modal-header">
          <!-- 닫기(x) 버튼 -->
          <button type="button" class="close" data-dismiss="modal">×</button>
          <!-- header title -->
          <h4 class="modal-title">영화 이름</h4>
        </div>
        <!-- body -->
        <div class="modal-body">
            <%@ include file="privacy_agreement_page.jsp" %>
        </div>
        <!-- Footer -->
        <div class="modal-footer">
          <button type="button" id="close-btn" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>
  
</body>
</html>