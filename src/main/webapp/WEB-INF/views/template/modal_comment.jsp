<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	
	.modal-dialog {
		width: 600px;
		height: 150px;
	}
	
	.modal-header {
		width: 600px;
		height: 50px;
	}
	
	.modal-body {
		padding: 0px;
	}
	.modal-txt {
		width: 598px;
		height: 150px;
		padding: 10px;
		resize: none;
		overflow: hidden;
		border: none;
	}
	
	.modal-txt:focus {
		outline: none;
	}
	
	.modal-footer {
		width: 600px;
		height: 50px;
	}
	
</style>
</head>
<body>
	<button class="btn btn-default" data-target="#layerpop" data-toggle="modal">+ 코멘트 작성하기</button><br/>
	<div class="modal fade" id="layerpop" >
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <!-- header -->
	      <div class="modal-header">
	        <!-- 닫기(x) 버튼 -->
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <!-- header title -->
	        <h4 class="modal-title">영화 이름</h4>
	      </div>
	      <!-- body -->
	      <div class="modal-body">
	            <textarea class="modal-txt"></textarea>
	      </div>
	      <!-- Footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>