<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="로그인 페이지" name="title" />
</jsp:include>
  <link rel="stylesheet" href="/movie/resources/css/loginPage.css"/>

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
      <a href="#"><span class="footer-link">아이디 찾기</span></a>
      <a href="#"><span class="footer-link main-footer-link">아이디 찾기</span></a>
      <a href="#"><span class="footer-link">아이디 찾기</span></a>
    </div>
  </div>
</body>
</html>