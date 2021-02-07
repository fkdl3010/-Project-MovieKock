<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.wrap {
		width: 100%;
		height: 60%;
		margin: 0px;
		position: relative;
		top: 100px;
	}
	
	.main {
		width: 500px;
		margin: auto;
		text-align: center;
		border: 2px solid #ccc;
		padding: 20px;
		
	}
	
	.main_body_font > span {
		font-size: 24px;
		font-weight: bold;
	}
	
	.little_font {
		font-size: 18px;
		color: #aaa;
	}
	
	.inp_pw {
		width: 443px;
		height: 50px;
		border: 0px;
		border-bottom: 2px solid #ddd;
		margin: 0px;
		font-size: 16px;
		padding: 0px 0px 0px 10px;
	}
	
	.main_body_inp > input:focus {
		outline:none;
		border-bottom: 2px solid black;
	}
	
	.inp_btn {
		width: 200px;
		height: 40px;
		color: black;
		background: white;
		font-weight: 600;
		border: 2px solid #ddd;
	}
	
	.main_footer {
		margin-top: 20px;
		text-align: right;
	}
	
</style>
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
<script>
	function fn_updatePw(f){
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
		
		if(f.pw.value == '' || f.pw_check.value == ''){
			alert('필요한 정보를 전부 입력 해주시기 바랍니다.');
			return;
		} else {
			f.action="findPw.do";
			f.submit();
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
</script>

	<div class="wrap">
		<div class="main">
			<!-- 비밀번호 재설정 할 input 박스 두개, 글 -->
			<form>
				<div class="main_body">
					<div class="main_body_font">
						<span>
							고객님의 비밀번호를 재설정 할수 있도록 비밀번호를 입력 해주시기 바랍니다.<br/>
							<br/>
							<div class="little_font">* 비밀번호는 아무에게도 알려주지 마세요.</div>
						</span>
					</div>
					<div class="main_body_inp">
						<div class="label_text"><label for="pw">비밀번호</label><span class="normal" id="pwRegBox">비밀번호는 8자 이상이어야 하며, 숫자/문자/특수문자를 모두 포함해야 합니다.</span></div>
						<input type="password" name="pw" id="pw" class="inp_pw" placeholder="비밀번호를 입력해주세요." onkeyup="pwRegCheck()"/><span id="pwCheck"></span><br/>
						<input type="password" id="pw_check" class="inp_pw" placeholder="비밀번호를 확인해주세요." onkeyup="pwEqualCheck()"/><span id="pwCheck2"></span>
						<div id="pwConfirm" class="normal" style="display:none;">비밀번호가 일치하지 않습니다.</div>
					</div>
				</div>
				<!-- 완료하기 -->
				<div class="main_footer">
					<input type="button" value="비밀번호 재설정" class="inp_btn" onclick="fn_updatePw(this.form)" />
				</div>
			</form>
		</div>
	</div>
  <%@ include file="../template/footer.jsp" %>