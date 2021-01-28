<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.signupPage_top_logo {
		text-align: center;
	}
	.top_logo{
		width: 7%;
	}
	
	.wrap {
		width: 100%;
		text-align: center;
		margin: auto;
	}
	
	.main {
		margin: 50px 200px 0px 200px;
		font-size:28px;
		text-align: center;
	}
	
	.pa_top_font{
		font-weight: bold;
	}
	
	.pa_mid{
		background: #eee;
		border-radius: 10px;
		display: inline-block;
	}
	
	.pa_mid_font {
		font-size: 80%;
	}
	
	
	.pa_bot {
		display: block;
		margin-top: 20px;
	}
	
	.table {
		border-radius: 10px;
		background: #eee;
		display: inline-block;
		font-size: 80%;
	}
	
	
	.tr {
		display: inline-block;
		margin: 10px;
	}
	
	.tr > .td:nth-of-type(1) {
		border-bottom: 1px solid #ccc;
	}
	
	.pa_btns{
		display: inline-block;
		width: 20%;
		margin-top: 20px;
	}
	
	.pa_btn_no, .pa_btn_yes {
		width: 120px;
		height: 50px;
		font-weight: bold;
	}
	
	.pa_btn_no {
		border: none;
		border-radius: 20px;
		background: #ccc;
	}
	
	.pa_btn_yes {
		border: none;
		border-radius: 20px;
		color: white;
		background: #abc;
	}
</style>
<script type="text/javascript">
	function fn_agreement_no(f){
		alert('이전페이지로 돌아갑니다.');
		history.back();
	}
</script>
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
						<input type="button" value="미동의" class="pa_btn_no" onclick="fn_agreement_no(this.form)" />
						<button class="pa_btn_yes">동의</button>
					</div>
				</form>
			</div>
		</div>
</body>
</html>