<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/requestPageCss/requestWritePage.css"/>
<body>
	<div class="wrap">
        <div class="main_head">
	        <h3>문의 목록</h3>
	        <p>문의 하기</p>
        </div>  
        <div class="main_body">
            <form action="requestWrite.do" method="post">
            <div class="box1">
                <div class="box2">
				        <select name="select" id="select">
                            <option value="문의유형" selected>컨텐츠문제</option>
                            <option value="결제오류">결제오류</option>
                            <option value="버그문제">버그문제</option>
                            <option value="건의사항">건의사항</option>
                            <option value="기타문의">기타문의</option>
					    </select>
                  		<input type="text" id="title" class="title" placeholder="제목을 입력하세요. " />
                        <label for="secret" id="secret-btn">나만 보기</label>
                        <input type="checkbox" id="secret" />
                        <input type="password" name="pw" value="pw" id="pw" class="display-none" />
				   </div>
                    <div class="box3">
                        <textarea rows="100" cols="100" class="content" id="content" placeholder="문의 내용을 입력하세요."></textarea>                     
                    </div> 
                    <div class="box5">
                        <input type="button" id="btn" class="btn" value="문의하기" onclick="location.href='requestListPage.do'" />
                    </div>
                </div>
				</form>
            </div>
        </div>
    
    <script src="/movie/assets/script/requestWritePage.js"></script>
 
 	<script type="text/javascript">
 	
 	var afterrequestWrite = '${afterrequestWrite}';
	if (afterInsert == 'true') {  // if (afterInsert != '') {
		var requestWrite = '${requestWriteResult}';
		if (requestWriteResult > 0 && '${param.a}' > 0) {  //  && '${param.a}' > 0 : addAttribute("a", InsertResult) 테스트용 코드입니다. 
			alert('삽입되었습니다.');
		} else {
			alert('실패하였습니다.');
		}
	}
 	
 	
 	function fn_finish(f){
    
    	f.action = 'requestListPage.do';
		f.submit();
		
	}
 
    
    function init(){
		
	}
	
	init();
    </script>
    
        
<%@ include file="../template/footer.jsp" %>
	
