<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<link rel="stylesheet" href="/movie/assets/style/recommand_page_css/recommand_page.css" />

<script type="text/javascript">
function randombtn(){
	if($('#random-frame').css("display")=="none"){
		$('#situ-frame').hide();
		$('#feel-frame').hide();
		$('#random-frame').show();
	}
	
}

function feelbtn(){
	if($('#feel-frame').css("display")=="none"){
		$('#random-frame').hide();
		$('#situ-frame').hide();
		$('#feel-frame').show();
	}
}

function situbtn(){
	if($('#situ-frame').css("display")=="none"){
		$('#random-frame').hide();
		$('#feel-frame').hide();
		$('#situ-frame').show();
	}
}

<script type="text/javascript">
var images = new Array("/movie/assets/images/poster/굿바이_싱글_포스터.jpg","/movie/assets/images/poster/사자_포스터.jpg","/movie/assets/images/poster/사자_포스터.jpg"); 


var index = Math.round(Math.random * 3);

document.write("<img width=130 name='image" + i + "' src='" + images [i] + "'></img>");

</script>
<body>
 <div id="wrap">
       	<div id="main">
     	<div id="header">
	   		<div id="heading">추천 영화</div>
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
            	<div class="situation-box">#썸</div>
            	<div class="situation-box">#혼술</div>
            	<div class="situation-box">#지방출장</div>
            	<div class="situation-box">#새해</div>
            	<div class="situation-box">#여행</div>
            	<div class="situation-box">#카페</div>
            	<div class="situation-box">#성공</div>
            	<div class="situation-box">#생일파티</div>
            	<div class="situation-box">#불금</div>    
        	</div>
    	</div>
 		<input type="button" value="추천 받기"/>
    </div>
  </div>
</body>
</html>