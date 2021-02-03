<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
<link rel="stylesheet" href="/movie/assets/style/singup_signin_page_css/signup_page.css"/>
</head>
<body>
		<div class="signupPage_top_logo">
			<a href="mainPage.do"><img class="top_logo" alt="회원가입페이지 상단로고" src="/movie/assets/images/logo.jpg" /></a>
		</div>
		<div class="wrap">
			<div id="main-wrap">
			<form method="post">
				<div class="top_text">
					무비콕 정보를 입력해주세요
				</div>
				<div class="main">
					<div class="label_text"><label for="id" >아이디</label><span class="normal" id="idRegBox">5~20자 사이의 소문자나 숫자를 사용해주세요.</span></div>
					<input type="text" name="id" id="id" class="inp_txt" placeholder="아이디를 입력해주세요." onkeyup="idRegCheck()"/>
					<input type="button" id="idCheckbtn" class="inp_btn" value="중복확인" onclick="fn_idCheck(this.form)"/>
					
					<div class="label_text"><label for="pw">비밀번호</label><span class="normal" id="pwRegBox">비밀번호는 8자 이상이어야 하며, 숫자/문자/특수문자를 모두 포함해야 합니다.</span></div>
					<input type="password" name="pw" id="pw" class="inp_txt" placeholder="비밀번호를 입력해주세요." onkeyup="pwRegCheck()"/><span id="pwCheck"></span><br/>
					<input type="password" id="pw_check" class="inp_txt" placeholder="비밀번호를 확인해주세요." onkeyup="pwEqualCheck()"/><span id="pwCheck2"></span>
					<div id="pwConfirm" class="normal" style="display:none;">비밀번호가 일치하지 않습니다.</div>
					
					<div class="label_text"><label for="nickname">닉네임</label></div>
					<input type="text" name="nickName" id="nickname" class="inp_txt" placeholder="닉네임을 확인해주세요." onkeyup="nickCheck()" />
					<input type="button" id="nickNameCheckbtn" class="inp_btn" value="중복확인" onclick="fn_nickCheck(this.form)" />
					
					<div class="label_text"><label for="name">이름</label></div>
					<input type="text" name="name" id="name" class="inp_txt" placeholder="이름을 입력해주세요." />
					
					<div class="label_text"><label for="email">이메일</label><span class="normal" id="emailRegBox">ex) exam@email.com or exam@email.co.kr</span></div>
					<input type="text" name="email" id="email" class="inp_txt" placeholder="이메일을 입력해주세요." onkeyup="emailRegCheck()" />
					<input type="button" id="emailCheckbtn" class="inp_btn" value="중복확인" onclick="fn_emailCheck(this.form)" />
					
					<div class="label_text"><label for="phone">휴대전화</label></div>
					<input type="text" name="phone" id="phone" class="inp_txt" placeholder="핸드폰 번호를 입력해주세요." />
				</div>
				<div class="bot_btn">
					<input type="button" class="inp_btn_bot" value="취소하기" onclick="fn_cancle(this.form)" />
					<input type="button" class="inp_btn_bot" onclick="fn_finish(this.form)" value="가입완료"/>
				</div>
			</form>
			</div>
		</div>	

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script type="text/javascript">
	
	function fn_cancle(f){
		if(confirm("회원가입을 취소하시겠습니까?") == true){
			history.back();
		}
	}
	
	
	function fn_idCheck(f){
		
		const userId = $('#id').val();
		
		if(!idRegCheck()){
			alert('아이디 양식에 맞춰주세요.');
			return;
		}
		
		if(userId != null && userId != '' ){
			
			$.ajax({
				url: 'userIdCheck/' + userId,
				type: 'post',
				dataType: 'json',
				success: function(responseJSON){
					if(responseJSON.idCheckResult == 'yes'){
						alert('이 아이디는 사용 가능합니다.');
						$('#idCheckbtn').attr('disabled','true');
						$('#pw').focus();
						return true;
					}else{
						alert('사용 중인 아이디입니다.');
						$('#id').focus();
						return false;
					}
				},
				error: function(){
					alert('오류');
				}
				
			});
			
			return true;
		}else{
			alert('아이디를 입력해주세요');
			$('#id').focus();
			return false;
		}

		
	}
	
	
	function fn_nickCheck(f){
		
		const userNick = $('#nickname').val();
		
		if(userNick != null && userNick != ''){
		
			$.ajax({
				url: 'userNickCheck/' + userNick,
				type: 'post',
				dataType: 'json',
				success: function(responseJSON){
					if(responseJSON.nickCheckResult == 'yes'){
						alert('이 닉네임은 사용 가능합니다.');
						$('#nickNameCheckbtn').attr('disabled','true');
						$('#name').focus();
						return true;
					}else{
						alert('사용 중인 닉네임입니다.');
						$('#nickname').focus();
						return false;
					}
				},
				error: function(){
					alert('오류');
					
				}
				
			});
			
			return true;
		}else{
			alert('닉네임을 입력해주세요');
			$('#nickname').focus();
			return false;
		}
		
	}
	
	function fn_emailCheck(f){
		
		
		const userEmail = $('#email').val();
		
		if(!emailRegCheck()){
			alert('이메일 양식에 맞춰주세요.');
			return;
		}
		
		if(userEmail != null && userEmail != ''){
			
		
			$.ajax({
				url: 'userEmailCheck/' + userEmail + '/',
				type: 'post',
				dataType: 'json',
				success: function(responseJSON){
					if(responseJSON.emailCheckResult == 'yes'){
						alert('이 이메일은 사용 가능합니다.');
						$('#emailCheckbtn').attr('disabled','true');
						$('#phone').focus();
						return true;
					}else{
						alert('사용 중인 이메일입니다.');
						$('#email').focus();
						return false;
					}
				},
				error: function(){
					alert('오류');
				}
				
			});
		
			return true;
		}else{
			alert('이메일을 입력해주세요');
			$('#email').focus();
			return false;
		}
	}
	
	
	
	
	
	function nickCheck(){
		$('#nickNameCheckbtn').removeAttr('disabled');
	}
	
	
	
	
	
	function idRegCheck(){
		
		const regId = /[0-9a-z]{5,20}$/;
			
		const idVal = $('#id').val();
		$('#idCheckbtn').removeAttr('disabled');
		if(idVal == ''){
			$('#idRegBox').attr('class', 'normal');
			$('#idRegBox').text('5~20자 사이의 소문자나 숫자를 사용해주세요.');
			return false;
		}
		if(regId.test(idVal)){
			$('#idRegBox').attr('class', 'possible');
			$('#idRegBox').text('중복확인을 진행해 주세요.');
			return true;
		}else{
			$('#idRegBox').attr('class', 'impossible');
			$('#idRegBox').text('5~20자 사이의 소문자나 숫자를 사용해주세요.');
			return false;
		}
			
		
		
	}
	
	function pwRegCheck(){
		
		const regPw = 	/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
		
		const pwVal = $('#pw').val();

		pwEqualCheck();
		if(pwVal == ''){
			$('#pwRegBox').attr('class', 'normal');
			$('#pwRegBox').text('비밀번호는 8자 이상이어야 하며, 숫자/문자/특수문자를 모두 포함해야 합니다.');
			return false;
		}
		
		if(regPw.test(pwVal)){
			$('#pwRegBox').attr('class', 'possible');
			$('#pwRegBox').text('사용 가능한 비밀번호 입니다.');
			return true;
		}else{
			$('#pwRegBox').attr('class', 'impossible');
			$('#pwRegBox').text('비밀번호는 8자 이상이어야 하며, 숫자/문자/특수문자를 모두 포함해야 합니다.');
			return false;
		}
		
		
	}
	
	
	
	function pwEqualCheck(){
		
		const pwVal = $('#pw').val();
		const pw_check = $('#pw_check').val();
		const pwConfirm = $('#pwConfirm');
		
		if(pw_check == ''){
			pwConfirm.css('display', 'none');
			return false;
		}
		
		if(pwVal != pw_check){
			pwConfirm.css('display', 'block').text('비밀번호가 일치하지 않습니다.').attr('class', 'impossible');
			return false;
		}else{
			pwConfirm.css('display', 'block').text('비밀번호가 일치합니다').attr('class', 'possible');
			return true;
		}
		
		
	}
	
	function emailRegCheck(){
		const regEmail = /^[a-z0-9-_]+@[a-zA-Z0-9]{3,}(\.[a-zA-Z]{2,6}){1,2}$/;
		
		const emailVal = $('#email').val();
		$('#emailCheckbtn').removeAttr('disabled');
		if(emailVal == ''){
			$('#emailRegBox').attr('class', 'normal');
			return false;
		}
		
		if(regEmail.test(emailVal)){
			$('#emailRegBox').attr('class', 'possible');
			return true;
		}else{
			$('#emailRegBox').attr('class', 'impossible');
			return false;
		}
	}
	
	
	
	function fn_finish(f){
		
		if($('#idCheckbtn').attr('disabled') != 'disabled'){
			alert('아이디 중복확인을 진행해 주세요.');
			$('#id').focus();
			return;
		}
		if(!pwRegCheck()){
			alert('비밀번호를 확인해 주세요.');
			$('#pw').focus();
			return;
		}
		if(!pwEqualCheck()){
			alert('비밀번호를 확인해 주세요.');
			$('#pw').focus();
			return;
		}
		if($('#nickNameCheckbtn').attr('disabled') != 'disabled'){
			alert('닉네임 중복확인을 진행해 주세요.');
			$('#nickname').focus();
			return;
		}
		if( $('#name').val() == '' ){
			alert('이름을 입력해 주세요.');
			$('#name').focus();
			return;
		}
		if($('#emailCheckbtn').attr('disabled') != 'disabled'){
			alert('이메일 중복확인을 진행해 주세요.');
			$('#email').focus();
			return;
		}
		if( $('#phone').val() == '' ){
			alert('휴대폰 번호를 입력해 주세요.');
			$('#phone').focus();
			return;
		}
		
		f.action = 'userSignUp.do';
		f.submit();
		
	}
	
	
	
	
	function init(){
		
	}
	
	init();
</script>	
</body>
</html>