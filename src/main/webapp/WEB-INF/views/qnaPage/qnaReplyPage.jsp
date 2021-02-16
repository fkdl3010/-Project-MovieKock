<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="답변하기" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/qnaPageCss/qnaReplyPage.css"/>
<body>
	<div class="wrap">
        <div class="main_head">
	        <h3>답변 하기</h3>
        </div>  
        <div class="main_body">
            <form action="qnaReplyPage.do" method="post">
            <div class="box1">
                <button class="btn">답변등록</button>
                <div class="box2">
                	<textarea rows="100" cols="100" name="qnaReplyContent" class="qnaReplyContent" id="qnaReplyContent" placeholder="답변 내용을 입력하세요."></textarea>                     
                </div>
        	</div>
			</form>
            </div>
        </div>
    
 
 	<script type="text/javascript">
 	
 	function fn_send(f){
		
			f.action="qnaListPage.do";
			f.submit();
			
		}
   
	   init();
 	
 	</script>
    
<%@ include file="../template/footer.jsp" %>
