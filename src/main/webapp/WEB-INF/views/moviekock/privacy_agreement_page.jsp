<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/movie/assets/style/privacy_agreement.css">
</head>
<body>
		<div class="signupPage_top_logo">
			<img class="top_logo" alt="회원가입페이지 상단로고" src="/movie/assets/images/logo.jpg" />
		</div>
		<div class="wrap">
			<div class="main">
				<form action="signupPage.do" method="get">
					<div class="pa_top">
						<a class="pa_top_font">개인 정보 수집 · 이용에 대한 동의</a>
					</div>
					<div class="pa_mid">
						<a class="pa_mid_font">무비콕은 본인인증, 콘텐츠 제공 을 위해 아래와 같이 개인정보를 수집 · 이용 하고자 합니다.<br/>
						내용을 자세히 읽으신 후 동의 여부를 결정하여 주시기 바랍니다.</a>
					</div>
					<div class="pa_bot">
						<div class="table">
							<div class="tr">
								<div class="td">항목</div>
								<div class="td">성명, 이메일, 휴대전화번호</div>
							</div>
							<div class="tr">
								<div class="td">수집 목적</div>
								<div class="td">본인인증, 컨텐츠 제공</div>
							</div>
							<div class="tr">
								<div class="td">보유 기간</div>
								<div class="td">회원 탈퇴시 까지</div>
							</div>
						</div>
					</div>
					<div class="pa_btns">
						<input type="button" value="미동의" id="no-agree" class="pa_btn_no" onclick="fn_agreement_no(this.form)" />
						<button class="pa_btn_yes">동의</button>
					</div>
				</form>
			</div>
		</div>
<script type="text/javascript">
	
	function fn_agreement_no(f){
		alert('이전페이지로 돌아갑니다.');
		$('#close-btn').trigger('click');
	}
</script>
</body>
</html>