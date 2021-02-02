<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script src="/movie/assets/script/recommandPage.js"></script>
<link rel="stylesheet" href="/movie/assets/style/recommand_Page.css" />
 <div id="wrap">
       	<div id="main">
     	<div id="header">
	   		<div id="heading"></div>
        	<div class="topmenu">
        		<button type="button" class="menu-botton" id="b1" onclick="randombtn()">랜덤 추천</button>
        		<button class="menu-botton" class="menu-botton" id="b2" onclick="feelbtn()">기분별 추천</button>
        		<button class="menu-botton" class="menu-botton" id="b3" onclick="situbtn()">상황별 추천</button>
        	</div>
        </div>
        	 <div id="random-frame" class="display">
        		<div id="movie-box">
            		<img src="" alt="movie-poster"/>
        		</div>
      	   </div>
       
       	 	<div id="feel-frame" class="display">
       			<div id="emoticon-frame">
            		<div class="emoticon-box">
                		<img src="assets/images/emoticon/angry.png" alt="angry"/>                                          
           			</div>
            		<div class="emoticon-box">
         	    		<img src="assets/images/emoticon/cold.png" alt="cold"/>   
            		</div>
            		<div class="emoticon-box">
						<img src="assets/images/emoticon/crying.png" alt="crying"/>
            		</div>
            		<div class="emoticon-box">
          				<img src="assets/images/emoticon/disappointment.png" alt="disappointment"/>
            		</div>
            		<div class="emoticon-box">
        				<img src="assets/images/emoticon/rolling-eyes.png" alt="rolling-eyes"/>
            		</div>
            		<div class="emoticon-box">
           				<img src="assets/images/emoticon/shocked.png" alt="shocked"/>
            		</div>
            		<div class="emoticon-box">
             			<img src="assets/images/emoticon/smile.png" alt="smile"/>
            		</div>
            		<div class="emoticon-box">
             			<img src="assets/images/emoticon/smiling.png" alt="smiling"/>
            		</div>
            		<div class="emoticon-box">
             			<img src="assets/images/emoticon/yummy.png" alt="yummy"/>
            		</div>
             		<div class="emoticon-box">
             			<img src="assets/images/emoticon/sleeping.png" alt="sleeping"/>
            		</div>
        		</div>
    	  </div>
      
       
        <div id="situ-frame" class="display">
        	<div id="tag-frame">
            	<div class="situation-box" id="tag1">#썸</div>
            	<div class="situation-box" id="tag2">#혼술</div>
            	<div class="situation-box" id="tag3">#지방출장</div>
            	<div class="situation-box" id="tag4">#새해</div>
            	<div class="situation-box" id="tag5">#여행</div>
            	<div class="situation-box" id="tag6">#카페</div>
            	<div class="situation-box" id="tag7">#성공</div>
            	<div class="situation-box" id="tag8">#생일파티</div>
            	<div class="situation-box" id="tag9">#불금</div>
            	<div class="situation-box" id="tag10">#이별했을 때</div>
            	<div class="situation-box" id="tag11">#새벽감성</div>
            	<div class="situation-box" id="tag12">#클래식</div>
            	<div class="situation-box" id="tag13">#코로나</div>
            	<div class="situation-box" id="tag14">#싸움</div>
            	<div class="situation-box" id="tag15">#의지활활</div>
            	<div class="situation-box" id="tag16">#공부</div>
            	<div class="situation-box" id="tag17">#기분전환</div>
            	<div class="situation-box" id="tag18">#출/퇴근길</div>
            	<div class="situation-box" id="tag19">#운동</div>
            	<div class="situation-box" id="tag20">#하우스파티</div>
            	<div class="situation-box" id="tag21">#해외</div>
            	<div class="situation-box" id="tag22">#차박</div>
            	<div class="situation-box" id="tag23">#루프탑</div>
            	       
        	</div>
    	</div>
 		<input type="button" value="추천 받기"/>
    </div>
  </div>


  <%@ include file="../template/footer.jsp" %>