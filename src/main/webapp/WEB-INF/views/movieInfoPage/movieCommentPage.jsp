<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="코멘트" name="title" />
</jsp:include>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
<link rel="stylesheet" href="/movie/assets/style/movie_info_page_css/movie_comment_page.css"/>

<body>

<div class="wrap">
        <div class="main_line">
          <div class="back_box">
          <i class="fas fa-arrow-left fa-4x" id="back" onclick=""></i>
          <p>코멘트</p>
          </div>  
        </div>
		<div class="main-top">
		  <div class="box1">
            <div class="box1_top">
		    <i class="fas fa-user-alt fa-4x" id=user_icon1></i>
            <div class="box1_name">name</div>
            <div class="box1_star_box">★ ?</div>
		    </div>
		    <div class="box1_middle">
		    	코멘트 글
		    </div>
            <div class="box1_bottom">
              <p>좋아요</p>
              <i class="far fa-thumbs-up fa-2x" id="finger1">count</i>
            </div>
		  </div>
		</div>
		<div class="main_middle">
		  <div class="box2">
            <div class="box2_top">
		    <i class="fas fa-user-alt fa-4x" id=user_icon2></i>
            <div class="box2_name">name</div>
            <div class="box2_star_box">★ ?</div>
            </div>
            <div class="box2_middle">
             	코멘트 글
            </div>
            <div class="box2_bottom">
              	<p>좋아요</p>
              	<i class="far fa-thumbs-up fa-2x" id="finger2">count</i>
            </div>
		  </div>
		</div>
		<div class="main_bottom">
		  <div class="box3">
            <div class="box3_top">
		    <i class="fas fa-user-alt fa-4x" id=user_icon3></i>
            <div class="box3_name">name</div>
            <div class="box3_star_box">★ ?</div>
            </div>
             <div class="box3_middle">
              	코멘트 글
            </div>
            <div class="box3_bottom">
              	<p>좋아요</p>
              	<i class="far fa-thumbs-up fa-2x" id="finger3">count</i>
            </div>
		  </div>      
		</div>
	</div>
 
   
<%@ include file="../template/footer.jsp" %>
