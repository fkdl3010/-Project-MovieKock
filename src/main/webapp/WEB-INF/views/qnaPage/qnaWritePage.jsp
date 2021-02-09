<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/qnaPageCss/qnaWritePage.css"/>
<body>
	<div class="wrap">
        <div class="main_head">
	        <h3>문의 목록</h3>
	        <p>문의 하기</p>
        </div>  
        <div class="main_body">
            <form action="qnaWrite.do" method="post">
            <div class="box1">
                <div class="box2">
				        <select name="qna_select" id="select">
                            <option value="1" selected>컨텐츠문제</option>
                            <option value="2">결제오류</option>
                            <option value="3">버그문제</option>
                            <option value="4">건의사항</option>
                            <option value="5">기타문의</option>
					    </select>
                  		<input type="text" name="qna_title" id="title" class="title" placeholder="제목을 입력하세요. " />
                        <label for="secret" id="secret-btn">나만 보기</label>
                        <input type="checkbox" name="qna_secret" value="1" id="secret" />
                        <input type="password" name="qna_pw" id="pw" class="display-none" />
				   </div>
                    <div class="box3">
                        <textarea rows="100" cols="100" name="qna_content" class="content" id="content" placeholder="문의 내용을 입력하세요."></textarea>                     
                    </div> 
                    <div class="box5">
                        <!-- <input type="button" id="btn" class="btn" value="문의하기" onclick="location.href='requestListPage.do'" /> -->
                        <button>문의하기</button>
                    </div>
                </div>
				</form>
            </div>
        </div>
    
    <script src="/movie/assets/script/qnaWritePage.js"></script>
 
 	<script type="text/javascript"> 	
	 	var afterqnaWrite = '${afterqnaWrite}';
		if (afterInsert == 'true') {  // if (afterInsert != '') {
			var qnaWrite = '${qnaWriteResult}';
			if (qnaWriteResult > 0 && '${param.a}' > 0) {  
				alert('삽입되었습니다.');
			} else {
				alert('실패하였습니다.');
			}
		}
 	
	 	function fn_finish(f){
	    	f.action = 'qnaListPage.do';
			f.submit();
		}
	 
	    function init(){
			
		}
		
		init();
    </script>
    
<%@ include file="../template/footer.jsp" %>
	
