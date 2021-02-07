<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
  <link rel="stylesheet" href="/movie/assets/style/singup_signin_page_css/signup_choice_page.css"  />
</head>
<body>
  <div class="main-choice">

    <div class="progress-box">
      <h3 class="progress-text">10개 이상의 영화를 선택해 주새요.</h3>
      <progress id="progress-bar" value="0" max="10"></progress>
      <h3 class="progress-count">0/10</h3>
    </div>
    <div class="submit-box">
      <form class="submit-form">
        <input class="submit-btn"type="button" value="완료" disabled/>
      </form>
    </div>

    <div class="main-movieList" id="main-movieList">
    
    	<div class="listBox" id="listBox">
    	
	      <c:if test="${empty movieDefaultList}">
	      	없음
	      </c:if>
	      <c:if test="${not empty movieDefaultList }">
	      	<c:forEach var="movie" items="${movieDefaultList }">
	      		<div class="list" style="background-image: url('/movie/assets/images/poster/${movie.movie_title}_포스터.jpg'); background-size: 250px 300px;"></div>
	      	</c:forEach>
	
	      </c:if>
	      
    	</div>
    </div>

  </div>

  <script src="/movie/assets/script/choicePage.js"></script>
  <script>
  	
  	
  	const main = document.querySelector('#main-movieList');
  	const listBox = document.createElement('div');
  	
  	
  	function getMovieList(){
  		
  		
  		
  		
  	}
  
  
  	function init(){
  		
  		
  	}
  	
  	init();
  	
  
  </script>
</body>
</html>