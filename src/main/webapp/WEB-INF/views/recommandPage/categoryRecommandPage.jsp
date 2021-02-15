<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="2번째 페이지" name="title" />
</jsp:include>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



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
      <form name="form" class="form-inline">
		  <div class="form-group">
		  	<select id="genre" name="genre" class="left form-control" onChange='formChange()'>
		  	  <option value="0">모든장르</option>
	          <option value="1">코미디</option>
	          <option value="2">드라마</option>
	          <option value="3">액션</option>
	          <option value="4">로맨스</option>
	          <option value="5">판타지</option>
	          <option value="6">멜로</option>
	          <option value="7">모험</option>
	          <option value="8">범죄</option>
	          <option value="9">SF</option>
	          <option value="10">스릴러</option>
	          <option value="11">전쟁</option>
	          <option value="12">공포</option>
	        </select>
		  
		  </div>
	  </form>
    </div>
  
    <div class="main-movieList">
 <!--  <c:if test="${empty movieList}">
     	조건에 맞는 영화가 없습니다.
	  </c:if>
	  <c:if test="$('#genre').val()==0 "> -->
	      	<c:forEach var="movie" items="${movieGenreAllList}">
	      		<div class="list" style="background-image: url('/movie/assets/images/poster/${movie.movie_title}_포스터.jpg'); background-size: 250px 300px;">
	      			<input type="checkbox" name="movie_no" class="movie_no" value="${movie.movie_no }" style="display: none;"/>
	      		</div>
	      		<div class="info">
							<div class="text">
								<h4>${movieDto.movie_title}</h4>
								<p>${movieDto.movie_nation}&nbsp;&nbsp; 평점<br /> 장르
								</p>
							</div>
				</div>
	      	</c:forEach>
 <!-- 	      </c:if>   -->
    </div>
<script>

console.log('${movieGenreAllList}');

$(document).on("click",".list",movePage);

function movePage(event){

	location.href = "movieInfoPage.do?movieNo" + movieNo +"&movieDto"+movieDto;
}


function formChange(){
	
	const genreNo =  $('#genre').val(); 

		$.ajax({
				url:'RecomandGenrePage/' + genreNo,
				type:'get',
				dataType:'json',
				success: function(responseObj){
        			const movieList = responseObj.movieGenreList;
        			$('.main-movieList').empty();
        			movieList.forEach(function(movieN){
        		
        				const movieOne = '<div class="list afterInsert" style="background-image: url(/movie/assets/images/poster/'+ movieN.movie_title+'_포스터.jpg' + '); background-size: 250px 300px;">'
        										+'<input type="checkbox" name="movie_no" class="movie_no" value='+movieN.movie_no+' style="display: none;"/>'+'</div>';
        				
        				$('.main-movieList').append(movieOne);
        			});
     
        			
        		},
        		error: function(){
        			
        		}
			
   
	}) ;
}	


</script>

<%@ include file="../template/footer.jsp" %>