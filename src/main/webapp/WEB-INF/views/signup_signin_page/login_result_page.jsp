<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

	var loginResult = '${loginResult}';
	
	if(loginResult == true){
		alert('${UserDto.user_nickname}님 환영합니다.');
		location.href='index.do';
	} else {
		alert('일치하는 회원이 없습니다.');
		location.href='login_page.do';
	}
	
</script>