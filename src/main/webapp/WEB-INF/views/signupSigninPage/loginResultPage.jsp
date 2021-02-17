<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

	if(${signUp}){
		swal({
		    title: "Info",
		    text: "${loginUser.user_nickname}님 환영합니다.",
		    icon: "info" //"info,success,warning,error" 중 택1
		});
		
		document.querySelector('#signUpAction').submit();
	}else if (${loginResult}) {
		swal({
		    title: "Info",
		    text: "${loginUser.user_nickname}님 환영합니다.",
		    icon: "info" //"info,success,warning,error" 중 택1
		});
		location.href='index.do';
	}else{
		
		swal({
		    title: "Waring",
		    text: "아이디와 비밀번호를 확인해주세요.",
		    icon: "warningo" //"info,success,warning,error" 중 택1
		});

		location.href='loginPage.do';
	}
	
	
</script>