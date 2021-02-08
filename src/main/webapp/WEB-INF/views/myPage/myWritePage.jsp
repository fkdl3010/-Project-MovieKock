<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../template/header.jsp">
	<jsp:param value="내가 쓴 글 목록" name="title" />
</jsp:include>
<style>
	.none{
		display: none;
	}
</style>      

<link rel="stylesheet" href="/movie/assets/style/myPage.css"/>
        <div class="big-box">
                <i id="profile" class="fas fa-user-circle"></i>
              <div class="tableBox" >
                <table>
					<thead>
						<tr>
							<th>글 번호</th>
							<th>영화</th>
							<th>제목</th>
							<th>닉네임</th>
							<th>작성일</th>
							<th>좋아요</th>
							<th colspan="2">비고</th>
						</tr>
					</thead>
					
					<tbody id="commentList"></tbody>
					
					<tfoot>
						<tr>
							<td colspan="7">
								<div id="paging" class="paging"></div>
							</td>
						</tr>
					</tfoot>
				</table>
                
              </div>
              
            </div>
            
            
            <!-- modal -->
	<style>
		.modal-dialog{
			width: 1200px
		}
		
	</style>
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
	           <jsp:include page="myWriteViewPage.jsp">
					<jsp:param value="test" name="title" />
			   </jsp:include>
	       </div>
	       <div class="footer-btn-box">
				<input type="button" value="수정하기" class="btn btn-primary none" id="updateControlBtn" onclick="fn_commentUpdateControl()"/>
	      		<input type="button" value="수정완료" class="btn btn-primary none" id="updateComment" onclick="fn_commentUpdate()"/>
				<input type="button" value="삭제하기" class="btn btn-primary none" id="deleteBtn" onclick="fn_commentDeleteBtn()"/>
       	   </div>
	       <!-- Footer -->
	       <div class="modal-footer">
	         <button type="button" id="close-btn" class="btn btn-default" data-dismiss="modal">닫기</button>
	       </div>
	     </div>
	   </div>
	 </div>
            
    <script src="/movie/assets/script/commentView.js"></script>
 
    </body>
	

	<%@ include file="../template/footer.jsp"%>