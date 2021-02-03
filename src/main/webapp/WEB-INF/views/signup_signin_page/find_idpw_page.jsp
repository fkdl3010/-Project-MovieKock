<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>계정 찾기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/movie/assets/style/common.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/movie/assets/style/singup_signin_page_css/find_idpw_page.css"	/>
</head>
<body>

	<div class="id-pw-main-wrapper">


    <div class="logo-wrapper">
      <div class="logo-px">
        <a href="mainPage.do"><i class="fas fa-video fa-5x"></i></a>
      </div>
    </div>


		<div class="contents-wrapper">
			<div class="contents-header">아이디, 비밀번호 찾기</div>

			<div class="id-pw-form-box">

				<div class="id-section">
					<div class="id-section-header section-header">아이디 찾기</div>
					<div class="id-form-control-box section-form">
						<form action="#" class="id-form">
							<input type="text" class="input-id inputs"
								placeholder="이름을 입력해 주세요." /> <input type="text"
								class="input-id-email inputs" placeholder="이메일을 입력해 주세요." />

							<button type="button" class="btn btn-default">아이디 찾기</button>

						</form>
					</div>
					<div></div>
				</div>

				<div class="pw-section">
					<div class="pw-section-header section-header">비밀번호 찾기</div>
					<div class="pw-form-control-box section-form">
						<form action="#" class="pw-form">
							<input type="text" class="input-pw-name inputs"
								placeholder="이름을 입력해 주세요." /> <input type="text"
								class="input-pw-email inputs" placeholder="이메일을 입력해 주세요." /> <input
								type="text" class="input-pw-id inputs"
								placeholder="아이디를 입력해 주세요." />
							<button type="button" class="btn btn-default">비밀번호 찾기</button>

						</form>
					</div>
					<div></div>
				</div>

			</div>

		</div>


	</div>

	<%@ include file="../template/footer.jsp"%>
