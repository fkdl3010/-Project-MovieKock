<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script>


$(document).ready(function(){

	swal({
	    title: "OK",
	    text: "이메일이 전송되었습니다",
	    icon: "success" //"info,success,warning,error" 중 택1
	});

			location.href="loginPage.do";
	    

});


</script>