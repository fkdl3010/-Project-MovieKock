<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	 .wrap {
      text-align: center;
      width: 100%;
      border: 1px solid blue;
    }
    
    .main {
      margin: 0px 100px 50px 100px;
      border: 1px solid red;
    }
    
    .snap{
      width: 100%;
      height: 350px;
    }

    .info_main_top {
      width: 100%;
    }
    .info_main_mid{
      width: 750px;
      height: 220px;
      margin: auto;
      display: flex;
    }

    .info_main_mid_left{
      width: 240px;
      height: 220px;
    }

    .info_main_mid_mid{
      width: 280px;
      height: 220px;
      text-align: left;
      display: flex;
      flex-direction: column;
    }

    .info_main_mid_right{
      width: 230px;
      height: 220px;
    }

    .info_main_bot_1th {
      text-align: left;
    }
    .info_main_mid_mid_title{
      margin-top: 100px;
      font-weight: bold;
      font-size: 20px;
      display: table-cell;
      vertical-align: bottom;
    }
    .info_main_mid_mid_contents{
      margin-top: 20px;
      height: 100px;
    }
    .textdeco{
      border-bottom: 1px solid rgba(0, 0, 0, 0.562);
    }
    .movie_info_opendate{
      display: inline-block;
      margin: 7px 0px;
    }
    .form-btn{
      width: 229px;
      padding: 12px 0px;
      
    }
    .info_main_mid_right{
      display: table-cell;
      vertical-align: bottom;
    }
    .movie_poster{
      background-color: gray;
      border: 1px solid green;
      width: 190px;
      height: 220px;
      margin: auto;
    }
</style>
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
	<div class="wrap">
		<div class="main">
			<div class="info_main_top">
				<img alt="스냅샷" class="snap" src="/movie/assets/images/snapshot.jpg" />
			</div>
			<div class="info_main_mid">
        <div class="info_main_mid_left info_main_mid_box">
          <div class="movie_poster">

          </div>
        </div>
        <div class="info_main_mid_mid info_main_mid_box">
          <div class="info_main_mid_mid_title">
            극장판 귀멸의 칼날 무한열차편
          </div>
          <div class="info_main_mid_mid_contents">
            <span class="movie_info_main">2020•애니메이션•일본</span><br>
            <span class="movie_info_opendate textdeco">개봉일 : 2021-01-27 누적관객 : 1만명</span><br>
            <span class="movie_info_score textdeco">평균 ★ 4.4(1,831명)</span>
          </div>
        </div>
        <div class="info_main_mid_right info_main_mid_box">
          <form class="info_main_mid_right">
            <button class="form-btn">+보고싶어요</button>
          </form>
        </div>
			</div>
			<div class="info_main_bot">
				<div class="info_main_bot_1th">
					<div class="1th_top">
						<a class="1th_top_font">기본정보</a>
					</div>
					<br/>
					<div class="1th_bot">
						<a class="1th_bot_font">
							혈귀로 변해버린 여동생 ‘네즈코’를 인간으로 되돌릴 단서를 찾아 비밀조직 귀살대에 들어간 ‘탄지로.’ ‘젠이츠’, ‘이노스케’와 새로운 임무 수행을 위해 무한열차에 탑승 후 귀살대 최강 검사 염주 ‘렌고쿠’와 합류한다.  달리는 무한열차에서 승객들이 ...
						</a>
					</div>
				</div>
				<div class="info_main_bot_2nd">
					
				</div>
				<div class="info_main_bot_3rd">
					
				</div>
				<div class="info_main_bot_4th">
					
				</div>
			</div>
		</div>
	</div>
	
	
	
	
<%@ include file="../template/footer.jsp" %>