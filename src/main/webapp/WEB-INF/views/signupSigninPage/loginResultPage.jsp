<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="signUpAction" method="post" action="signupChoicePage.do">
		<input type="hidden" name="no" value="${loginUser.user_no }">
	</form>

</body>
</html>
<script>

	if(${loginResult}){
		alert('${loginUser.user_nickname}님 환영합니다.');
		
		if(${signUp}){
			document.querySelector('#signUpAction').submit();
		}else{
			location.href='index.do';
		}
	} else {
		alert('일치하는 회원이 없습니다.');
		location.href='loginPage.do';
	}
	
</script>