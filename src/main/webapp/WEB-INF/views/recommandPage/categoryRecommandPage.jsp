<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="2번째 페이지" name="title" />
</jsp:include>
<script>
function fn_goInfo(){
	
	var no = $('input:checkbox[id="checkbox_id"]').val();
		location.href="movieInfoPage.do?no="+no;
}
		
console.log('${movieNo}');
console.log('${movieParam}');

</script>

  <link rel="stylesheet" href="/movie/assets/style/recommandPageCss/categoryRecommandPage.css"/>

  <div class="main-wrapper">

    <div class="nav-category">
      <!-- <form class="top-form col-xs-2">
        <select name="left" class="left form-control">
          <option value="모든장르">모든장르</option>
          <option value="모든장르">모든장르</option>
          <option value="모든장르">모든장르</option>
          <option value="모든장르">모든장르</option>
        </select>
        <select name="right" class="right form-control ">
          <option value="정렬기준">정렬기준</option>
          <option value="정렬기준">정렬기준</option>
          <option value="정렬기준">정렬기준</option>
          <option value="정렬기준">정렬기준</option>
        </select>
      </form> -->
      <form class="form-inline">
		  <div class="form-group">
		  	<select name="left" class="left form-control">
	          <option value="모든장르">모든장르</option>
	          <option value="모든장르">모든장르</option>
	          <option value="모든장르">모든장르</option>
	          <option value="모든장르">모든장르</option>
	        </select>
		  </div>
		  <div class="form-group">
		  	<select name="left" class="right form-control">
	          <option value="모든장르">모든장르</option>
	          <option value="모든장르">모든장르</option>
	          <option value="모든장르">모든장르</option>
	          <option value="모든장르">모든장르</option>
	        </select>
		  </div>
	  </form>
    </div>
  
    <div class="main-movieList">
      <div  class="list">
     	 <input type="checkbox" name="choiceNo" class="movie_no" value="70"  onclick="location.href='movieInfoPage.do?no=${movieNo}';" />
      </div>
      <div class="list">
      	<input type="checkbox" id="checkbox_id" class="movie_no" value="${movie_no}" onclick="fn_goInfo()"/>
      </div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
      <div class="list"></div>
    </div>

  </div>
<%@ include file="../template/footer.jsp" %>