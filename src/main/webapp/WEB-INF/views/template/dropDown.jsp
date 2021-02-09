<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
.ddBody{
    margin : 10px;
    padding: 10px;
    text-align: center;
}
.dropdown{
    position: relative;
    display: inline-block;
}
/* .button{ */
/*     padding: 10px 40px; */
/*     font-size:20px; */
/*     background-color: brown; */
/*     color: wheat; */
/* } */
#drop-content{
    position: absolute;
    z-index: 1;
}
#drop-content a{
    display:block;
    font-size: 16px;
    background-color: #dfdfdf;
    color: black;
    text-decoration: none;
    padding: 10px 0px;
    margin: 2px 0px 0px 0px;
    width: 100px;
}
</style>
<body>
	<div class="ddBody">
	    <div class="dropdown">
	        <button onclick="dp_menu()" class="button"><i class="fas fa-user-circle fa-3x"></i></button>
	        <div style="display: none;" id="drop-content" class="dropDown-menu dropdown-menu-right" >
	            <a href="myPage.do">마이페이지</a>
	            <a href="logout.do">로그아웃</a>
	        </div>
	    </div>
    </div>
 
    <script>
        function dp_menu(){
            let click = document.getElementById("drop-content");
            if(click.style.display === "none"){
                click.style.display = "block";
 
            }else{
                click.style.display = "none";
 
            }
        }
    </script>
</body>
</html>
