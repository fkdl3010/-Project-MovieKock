<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
<link rel="stylesheet" href="/movie/assets/style/movieInfoPageCss/movieInfoPage.css"/>

<c:if test="${empty movieDto }">
	영화정보 없음!
</c:if>

<c:if test="${not empty movieDto }">
	<div class="wrap">
		<div class="info_main_top">
			<div class="snap_background_left"></div>
				<img alt="스냅샷" class="snap" src="/movie/assets/images/snap/${movieDto.movie_title}_스냅샷.jpg" />
			<div class="snap_background_right"></div>
		</div>
		<div class="main">
			<div class="info_main_mid">
		        <div class="info_main_mid_left info_main_mid_box">
		          <div class="movie_poster" style="background-image: url('/movie/assets/images/poster/${movieDto.movie_title}_포스터.jpg')">
		
		          </div>
		        </div>
		        <div class="info_main_mid_mid info_main_mid_box">
		          <div class="info_main_mid_mid_title">
		            ${movieDto.movie_title }
		          </div>
		          <div class="info_main_mid_mid_contents">
		            <span class="movie_info_main"> ${movieDto.genre_name } • ${movieDto.movie_nation } </span><br>
		            <span class="movie_info_opendate textdeco">개봉일 : ${movieDto.movie_opening_date } 누적관객 : ${movieDto.movie_audience }</span><br>
		            <span class="movie_info_score textdeco">평균 ★ 4.4(1,831명)</span>
		          </div>
		        </div>
		        <div class="info_main_mid_right info_main_mid_box">
		          <div class="my-rating-contents txt">평가하기</div>
				  <div id="star-rating"></div>
		            <button class="btn btn-default" id="wish">+보고싶어요</button>
		            <!-- modal comment -->
					<div class="comment_top_right">
						<%@ include file="../template/modalComment.jsp" %>
					</div>
		        </div>
			</div>
			<div class="info_main_bot">
				<div class="info_main_bot_basic_info">
					<div class="main_bot_top">
						<a class="main_bot_top_font txt">기본정보</a>
					</div>
					<br/>
					<div class="main_bot_bot">
						<span class="main_bot_bot_font txt">
							혈귀로 변해버린 여동생 ‘네즈코’를 인간으로 되돌릴 단서를 찾아 비밀조직 귀살대에 들어간 ‘탄지로.’ ‘젠이츠’, ‘이노스케’와 새로운 임무 수행을 위해 무한열차에 탑승 후 귀살대 최강 검사 염주 ‘렌고쿠’와 합류한다. 

달리는 무한열차에서 승객들이 하나 둘 흔적 없이 사라지자 숨어있는 식인 혈귀의 존재를 직감하는 ‘렌고쿠’. 귀살대 ‘탄지로’ 일행과 최강 검사 염주 ‘렌고쿠’는 어둠 속을 달리는 무한열차에서 모두의 목숨을 구하기 위해 예측불가능한 능력을 가진 혈귀와 목숨을 건 혈전을 시작하는데…
						</span>
					</div>
				</div>
				<div class="info_main_bot_staff">
					<div class="info_main_bot_staff_font">출연 / 제작</div>
					
					<div class="bot_staff_profiles">
						<div class="bot_staff_profiles_img">
							<!-- <img alt="사진" src="" /> 나중에 변경해야함 개발편의를 위해 box 로 대체-->
							<img alt="보노보노" class="staff_profile_img" src="/movie/assets/images/감독_${movieDto.movie_director }.jpg" />
						</div>
						<div class="bot_staff_profiles_txt">
							<div class="bot_staff_progiles_name">
								${movieDto.movie_director.replaceAll("_", " ") }
							</div>
							<div class="bot_staff_progiles_position txt">
								감독
							</div>
						</div>
					</div>
					
					<!-- 구분선 출연/제작 1 -->
					<c:forEach var="actor" items="${actorList }">
						<div class="bot_staff_profiles">
							<div class="bot_staff_profiles_img">
								<!-- <img alt="사진" src="" /> 나중에 변경해야함 개발편의를 위해 box 로 대체-->
								<img alt="배우" class="staff_profile_img" src="/movie/assets/images/staff_profile/${actor }.jpg" />
							</div>
							<div class="bot_staff_profiles_txt">
								<div class="bot_staff_progiles_name">
									${actor.replaceAll("_", " ") }
								</div>
								<div class="bot_staff_progiles_position">
									배우
								</div>
							</div>
						</div>
					</c:forEach>
					
					<!-- 구분선 -->
				</div>
				<div class="info_main_bot_comment">
					<div class="info_main_bot_comment_top">
						<div class="comment_top_left txt">
							코멘트 200+
						</div>
						
					</div>
					<div class="info_main_bot_comment_bot">
						<div class="comment_bot_1th">
							<div class="comment_main_top">
								<a href="">
									<i class="fas fa-user-circle fa-2x txt">정현</i>
								</a>
								<!--**************************** 별점 기능 필수 ******************************* -->
								★5.0
							</div>
							<div class="comment_main_mid">
								<textarea class="comment_main_mid_txt" readonly>
dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
								</textarea>
							</div>
							<div class="comment_main_bot">
								<a href="">
								좋아요<i class="far fa-thumbs-up">&nbsp;&nbsp;77</i>
								</a>
							</div>
						</div>
						<div class="comment_bot_2nd">
							<div class="comment_main_top">
								<a href="">
									<i class="fas fa-user-circle fa-2x">정현</i>
								</a>
								<!--**************************** 별점 기능 필수 ******************************* -->
								★5.0
							</div>
							<div class="comment_main_mid">
								<textarea class="comment_main_mid_txt" readonly>
dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
								</textarea>
							</div>
							<div class="comment_main_bot">
								<a href="">
								좋아요<i class="far fa-thumbs-up">&nbsp;&nbsp;77</i>
								</a>
							</div>
						</div>
						<div class="comment_bot_3rd">
							<div class="comment_main_top">
								<a href="">
									<i class="fas fa-user-circle fa-2x">정현</i>
								</a>
								<!--**************************** 별점 기능 필수 ******************************* -->
								★5.0
							</div>
							<div class="comment_main_mid">
								<textarea class="comment_main_mid_txt" readonly>
dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
								</textarea>
							</div>
							<div class="comment_main_bot">
								<a href="">
								좋아요<i class="far fa-thumbs-up">&nbsp;&nbsp;77</i>
								</a>
							</div>
						</div>
					</div>
					<input class="inp_btn commet_view_btn" type="button" value="더보기" onclick="" />
				</div>
				<div class="info_main_bot_movies">
					
					<c:forEach var="relationMovie" items="${relationMovieList }">
						<div class="main_bot_movies_poster" style="background-image: url('/movie/assets/images/poster/${relationMovie.movie_title}_포스터.jpg')">
							<div class="main_bot_poster_info">
								<div>제목</div>
								<span>장르 ${relationMovie.genre_name }&nbsp; 평점</span>
							</div>
						</div>
					</c:forEach>
					
				</div>
			</div>
		</div>
	</div>
</c:if>
	
	
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
<script>

	const movieNo = ${movieDto.movie_no};
	const ratingContentsBox = document.querySelector('.my-rating-contents');
	const movieStarObjList = localStorage.getItem("movieStarObjList");
	let movieStar_List = [];
	const loginUser = '${loginUser.user_no}';

	/* 별점 초기 값 */
	$('document').ready(function(){
		
	});
	$("#star-rating").on("rateyo.init", function (e, data) {
		 
		if(loginUser == null || loginUser == ''){
			
			if(movieStarObjList != null){
				 movieStar_List = JSON.parse(movieStarObjList);
				 let movieStarObj = movieStar_List.find(function(element){
					 	
					return element.movieNo == movieNo;
				 });
				 
				 if(movieStarObj){
					 
					 let targetRating = movieStarObj.rating;
					 
					 $("#star-rating").rateYo("option", "rating", targetRating);
					 ratingContentsText(e, targetRating);
				 }else{
					 return;
				 }
				 
			}else{
				return;
			}
			
		}else{
			
			// 로그인 유저가 있을 경우 가져옴
			$.ajax({
				url: 'initStarScore/' + loginUser + '/' + movieNo,
				type: 'get',
				contentType: 'application/json; charset=utf-8',
				dataType: 'json',
				async:false,
				success: function(responseObj){
					
					if(responseObj.result){
						
						 let targetRating = responseObj.movieScore;
						 $("#star-rating").rateYo("option", "rating", targetRating);
						 ratingContentsText(e, targetRating);
					}else{
						return;
					}
				},
				error: function(){
					swal({
					    title: "Error",
					    text: "유저초기별점에러",
					    icon: "error" //"info,success,warning,error" 중 택1
					});
					
					
					/*  alert('유저초기별점에러');*/
				}
				
			});
			
		}
		
       });
 
	$("#star-rating").rateYo({
		rating: 1.5,
		halfStar: true,
		starWidth: "45px"
		
	});
	
	/* 별점 바뀔때마다 실행 */
	 $("#star-rating").rateYo().on("rateyo.set", function (e, data) {

		 let rating = data.rating;
		 ratingContentsText(e, rating);
		 
		 $.ajax({
			 url: 'setStar/'+ movieNo + '/' + rating,
			 type: 'post',
			 contentType: 'application/json; charset=utf-8',
			 dataType: 'json',
			 success: function(responseObj){
				 console.log(responseObj.setUserScore);
				 
				 let movieStarObj = {
						 "movieNo": movieNo,
						 "rating": rating
				 }
				 
				 // 로그인 안한상태라면
				 if(!responseObj.setUserScore){
					 
					 if(movieStarObjList == null){
						 movieStar_List.push(movieStarObj);
						 console.log(movieStarObj);
						 localStorage.setItem("movieStarObjList" , JSON.stringify(movieStar_List) );
				 
					 }else{
						 movieStar_List = JSON.parse(movieStarObjList);
						 console.log(movieStar_List);
						 let idx = movieStar_List.findIndex(function(e){
							 			return e.movieNo === movieNo;
						 });
						 if(idx == -1){
							 
							 movieStar_List.push(movieStarObj);
							 localStorage.setItem("movieStarObjList" , JSON.stringify(movieStar_List) );
						 }else{
							 
						 	movieStar_List.splice(idx, 1);
						 	movieStar_List.push(movieStarObj);
							localStorage.setItem("movieStarObjList" , JSON.stringify(movieStar_List) );
	
						 }
						 
						 
					 }
				 }else{
					 console.log('성공');
				 }
			 },
			 error: function(){
				 alert('error');
			 }
			 
			 
		 });
         
         
     });
	
	 // 평가후 점수별로 코멘트
	 function ratingContentsText(e, getRating){
		 
		 /* alert("The rating is set to " + data.rating + "!"); */
         let rating = getRating;
         
         switch(true){
         	
         case rating >= 4 : ratingContentsBox.innerText = '재밌어요'; break;
         case rating >= 2.5 : ratingContentsBox.innerText = '볼만해요'; break;
         case rating >= 0 : ratingContentsBox.innerText = '별로에요'; break;
         						
         }
	 }
	 
	 // 세션에 존재하는 값 체크
	
	 
	 
	 
	 
	 
	 // 모달 컨트롤
	 $('#modalBox').on('click',handleModal);
	 
	 function handleModal(){
		 if(loginUser == ''){
			 alert('로그인 후 이용해 주세요!');
			 location.href="loginPage.do";
		 }
	 }
			 
	
		
	</script>	
	
<%@ include file="../template/footer.jsp" %>