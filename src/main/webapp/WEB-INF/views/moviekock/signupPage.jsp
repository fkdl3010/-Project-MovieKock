<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/movie/assets/style/signupPage.css"/>
</head>
<body>
		<div class="signupPage_top_logo">
			<img class="top_logo" alt="회원가입페이지 상단로고" src="/movie/assets/images/logo.jpg" />
		</div>
		<div class="wrap">
			<form action="" method="post">
				<div class="top_text">
					무비콕 정보를 입력해주세요
				</div>
				<div class="main">
					<div class="label_text"><label for="id" >아이디</label></div>
					<input type="text" id="id" class="inp_txt" placeholder="아이디를 입력해주세요." />
					<input type="button" class="inp_btn" value="중복확인" onclick="" />
					<div class="label_text"><label for="pw">비밀번호</label></div>
					<input type="text" id="pw" class="inp_txt" placeholder="비밀번호를 입력해주세요." /><br/>
					<input type="text" id="pw_check" class="inp_txt" placeholder="비밀번호를 확인해주세요." />
					<div class="label_text"><label for="nickname">닉네임</label></div>
					<input type="text" id="nickname" class="inp_txt" placeholder="닉네임을 확인해주세요." />
					<input type="button" class="inp_btn" value="중복확인" onclick="" />
					<div class="label_text"><label for="name">이름</label></div>
					<input type="text" id="name" class="inp_txt" placeholder="이름을 입력해주세요." />
					<div class="label_text"><label for="email">이메일</label></div>
					<input type="text" id="email" class="inp_txt" placeholder="이메일을 입력해주세요." />
					<input type="button" class="inp_btn" value="중복확인" onclick="" />
					<div class="label_text"><label for="phone">휴대전화</label></div>
					<input type="text" id="phone" class="inp_txt" placeholder="핸드폰 번호를 입력해주세요." />
				</div>
				<div class="bot_btn">
					<input type="button" class="inp_btn_bot" value="취소하기" onclick="" />
					<button class="inp_btn_bot">가입완료</button>
				</div>
			</form>
		</div>	
	
</body>
</html>