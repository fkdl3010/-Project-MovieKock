<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
 <style type="text/css">
      #wrap{
            width: 1300px;
            height: 1000px;
            margin: auto;
            border : 1px solid black;
        }
     
        #header{
            position: relative;
            top: 100px;
            font-weight: bold;
            font-size: 45px;
            padding-left: 5px;
        }
        
        #main{
        	width : 1300px;
        	height: 900px;
        	position :relative;
        }
        
        .topmenu{
			position: absolute;
			left: 210px;
			top : -5px;
		}
		
		.display{
		 	display : none;
		}
		
		#random-frame{
			position: absolute;
			top : 150px;
			left : 400px;
		}
		
		#feel-frame{
			position : absolute;
			top : 200px;
			left : 200px;
		
		}
		
	  #situ-frame{
         	position : absolute;
            top : 250px;
			left : 225px;
        }
        
        #tag-frame{
        	width : 900px;
        	display: flex;
            flex-wrap: wrap;
        }
        
		#movie-box{
			width : 500px;
			height: 600px;
			margin : auto;
			position : relative;
			top : 10px;
			border : 2px solid black;
		}
        
        #emoticon-frame{
        	postion : absolute;
        	right: 0px;
            width: 950px;
            display: flex;
            flex-wrap: wrap;
        }
        
        
       .situation-box{
            margin: 20px;
            margin-left : 100px;
            border: 3px solid navy;
            border-radius: 40px;
            width: 150px;
            height: 60px;
            text-align: center;
            font-weight: bold;
            font-size: 30px;
            text-align: center;
            line-height: 60px;
            color : navy;
        }
        
        img{
        	width : 150px;
        	height : 150px;
        	margin : 20px;
        	margin-top: 25px;	
        }
       
       input{
       		border-radius: 10px;
       		background-color: light-gray;
       		border : 2px solid light-gray;
       		height: 50px;
			width : 130px;
       		font-size: 20px;
       		font-weight: bold;
       		position : absolute;
       		left : 550px;
       		bottom : 40px;
       
       }
  
		button{
			text-align: center;
			font-weight: bold;
			font-size: 20px;
			background-color: white;
			border : 2px solid gray;
			height: 40px;
			width : 130px;
		}
	
		#b1{
			border-radius: 10px 0px 0px 10px;
			margin-right: -12px;
	
			}
	
		#b3{
			border-radius: 0px 10px 10px 0px;
			margin-left: -12px;
		}

		button:focus {
  			background-color:gray;
  			color:white;
		}
	
	
		input:hover{
			background-color:gray;
  			color:white;
		}
        .active:active {
  				backgronud: gray;
			}
		.focus:focus {
 		 color: red;
		}
		:target {
 			 color: red;
		}
		
		
</style>
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

</script>
<body>
 <div id="wrap">
     	<div id="header">
	   		<div id="heading">추천 영화</div>
        	<div class="topmenu">
        		<button type="button" class="menu-botton" id="b1" onclick="randombtn()">랜덤 추천</button>
        		<button class="menu-botton" class="menu-botton" id="b2" onclick="feelbtn()">기분별 추천</button>
        		<button class="menu-botton" class="menu-botton" id="b3" onclick="situbtn()">상황별 추천</button>
        	</div>
        </div>
       	<div id="main">
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