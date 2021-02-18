<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	
	
	swal({
	    title: "Info",
	    text: "로그아웃 되었습니다.",
	    icon: "info" //"info,success,warning,error" 중 택1
	});
	location.href='index.do';
</script>