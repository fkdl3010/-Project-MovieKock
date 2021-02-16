<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<jsp:include page="../template/header.jsp">
	<jsp:param value="코멘트" name="title" />
</jsp:include>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
<link rel="stylesheet" href="/movie/assets/style/movieInfoPageCss/movieCommentPage.css"/>

<body>

<div class="wrap">
		<input type="hidden" id="movieNo" value="${movieNo }" />
        <div class="main_line">
          <div class="back_box">
          <i class="fas fa-arrow-left fa-4x" id="back" onclick=""></i>
          <p>코멘트</p>
          </div>  
        </div>
        
        <c:if test="${empty commentDtoList }">
        	<script>
        		alert('등록된 코멘트가 없습니다.');
        		history.go(-1);
        	</script>
        	
        </c:if>
        <c:if test="${not empty commentDtoList }">
	        <c:forEach items="${commentDtoList }" var="commentDto">
				<div class="main-top">
				  <div class="box1">
		            <div class="box1_top">
				    <i class="fas fa-user-alt fa-4x" id=user_icon1></i>
		            <div class="box1_name">${commentDto.user_nickname }</div>
		            <div class="box1_star_box">★ ${commentDto.comment_score == 0.0 ? 0 : commentDto.comment_score}</div>
				    </div>
				    <div class="box1_middle">
				    	<textarea class="commentContents" readonly>${commentDto.comment_content }
				    	</textarea>
				    </div>
		            <div class="box1_bottom">
		              <p>좋아요</p>
		              <i class="far fa-thumbs-up fa-2x" id="finger1">${commentDto.comment_like }</i>
		            </div>
				  </div>
				</div>
	        </c:forEach>
        </c:if>
		
	</div>
 
 <script src="/movie/assets/script/commentScrollEvent.js"> </script>
   
</body>
</html>