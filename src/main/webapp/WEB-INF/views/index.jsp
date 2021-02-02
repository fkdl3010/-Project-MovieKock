<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>


<<<<<<< HEAD
	<a href="mainPage.do">메인페이지</a><br>
	<a href="myPage.do">마이페이지 이동</a><br>
	<a href="2nd.do">2번째 페이지로 이동</a><br>
	<a href="loginPage.do">로그인 페이지로 이동</a><br>

=======
	<a href="main_page.do">메인페이지</a><br><br>
	
	-마이 페이지-<br>
	<a href="my_page.do">마이페이지 이동</a><br>
	<a href="my_write_page.do">내가 쓴 글 페이지 이동</a><br>
	<a href="my_write_view_page.do">내가 쓴글 보기페이지</a><br>
	<a href="#" data-target="#layerpop" data-toggle="modal">내가 쓴글 보기페이지-모달창-</a><br><br>
>>>>>>> 9a7075aefd83a64cf485bbb76e36f36cc182ef04

	-추천 페이지-<br>
	<a href="category_recommand_page.do">장르별 추천 페이지로 이동</a><br>
	<a href="recommand_page.do">기분 상황별 추천 페이지이동</a><br><br>

<<<<<<< HEAD
	<a href="my_write_page.do">내가 쓴 글 페이지 이동</a><br>
	<a href="signupPage.do">회원가입</a><br>
	<a href="choicePage.do">회원가입시 영화선택페이지</a><br>
	<a href="idPwPage.do">아이디 비밀번호 찾기</a><br>
	<a href="recommandPage.do">영화 추천 페이지이동</a><br>
	<a href="privacy_agreement_page.do">개인정보약관동의사이트</a><br>
	<a href="movie_info_page.do">영화 INFO 페이지</a><br>
<<<<<<< HEAD

	<a href="myWriteViewPage.do">내가 쓴글 보기페이지</a><br>
	<a href="ask_page.do">문의하기 페이지</a><br>
	


	<a href="#" data-target="#layerpop" data-toggle="modal">내가 쓴글 보기페이지</a><br>
	<a href="ask_page.do">문의하기</a><br>

=======
	<a href="myWriteViewPage.do">내가 쓴글 보기페이지</a><br>
	<a href="ask_page.do">문의하기 페이지</a><br>
	

	<a href="#" data-target="#layerpop" data-toggle="modal">내가 쓴글 보기페이지</a><br>
	<a href="ask_page.do">문의하기</a><br>
>>>>>>> ab92aa52e34dc6527978035bfa4fdec9b33458fc
=======
	-회원가입-<br>
	<a href="login_page.do">로그인 페이지로 이동</a><br>
	<a href="signup_page.do">회원가입</a><br>
	<a href="signup_choice_page.do">회원가입시 영화선택페이지</a><br>
	<a href="find_idpw_page.do">아이디 비밀번호 찾기</a><br>
	<a href="privacy_agreement_page.do">개인정보약관동의사이트</a><br><br>
	
	-영화 정보보기 페이지-<br>
	<a href="movie_info_page.do">영화 INFO 페이지</a><br><br>
	
	-문의하기-<br>
	<a href="request_write_page.do">문의하기 페이지</a><br>
	<a href="request_list_page.do">문의목록 페이지</a><br>
	<a href="request_view_page.do">문의보기 페이지</a><br>
	

>>>>>>> 9a7075aefd83a64cf485bbb76e36f36cc182ef04
	
	

	
	<!-- modal -->
	<style>
		.modal-dialog{
			width: 1200px
		}
		
	</style>
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
            <jsp:include page="my_page/my_write_view_page.jsp">
				<jsp:param value="test" name="title" />
			</jsp:include>
        </div>
        <!-- Footer -->
        <div class="modal-footer">
          <button type="button" id="close-btn" class="btn btn-default" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	대충 내용<br/>
	
	
<%@ include file="template/footer.jsp" %>