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
		width: 598px;
		height: 50px;
	}
	
	.modal-body {
		padding: 0px;
	}
	
	.comment_contents, .comment_title {
		width: 598px;
		border: 0px;
		border-bottom: 2px solid #ddd;
		margin: 0px;
		font-size: 16px;
		padding: 0px 0px 0px 10px;
	}
	
	.comment_title {
		height: 50px;
	}
	
	.comment_contents {
		padding: 20px 20px 20px 10px;
		height: 400px;
		resize: none;
	}
	
	.comment_contents:focus, .comment_title:focus {
		outline: none;
	}
	
	.modal-footer {
		width: 598px;
	}
	
	.btn-default {
		margin: auto;
	}
	
</style>
</head>
<body>
	<button class="btn btn-default" id="modalBox" data-target="#layerpop" data-toggle="modal">+ 코멘트 작성하기</button><br/>
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
	      	<form>
	      		<input type="text" class="comment_title" name="commentTitle" placeholder="제목을 입력해주세요." />
	      		<textarea class="comment_contents" name="commentContents" placeholder="내용을 입력해주세요." ></textarea>
	      		<input type="hidden" class="commentMovieNo" name="commentMovieNo"/>
	      	</form>
	      </div>
	      <!-- Footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">완료</button>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>