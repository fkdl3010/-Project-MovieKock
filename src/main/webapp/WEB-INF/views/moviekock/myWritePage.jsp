<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	.wrap {
		width: 100%;
		height: 1000px;
	}
	
	.box {
		width: 70%;
		hight: 70%;
		font-size: 10px;
		background: black;
	}
	
	.box1 {
		width: 70%;
		height: 70%;
		margin:auto;
		border-radius: 20px 20px;
		background: gray;
		text-align: center;
		fontsize: 20px;
		z-index: 1;
	}
	
	.box2 {
		width: 50%;
		height: 50%;
		border: 1px;
		background: red;
		margin: auto;
		z-index: 2;
	}
	
	.box3 {
		width: 35%;
		height: 35%px;
		border: 1px;
		background: blue;
		margin: auto;
		z-index: 3;
	}
	
	.box4 {
		width: 20%;
		heght: 20%;
		border: 1px;
		border-radius: 10px 10px 10px 10px;
		background: orange;
		margin: auto;
		font-size: 10px;
		text-align: center;
		z-index: 4;
	}
	
	
	.more_button {
		width: 30px;
		height: 6px;
		margin:auto;
	}
	
</style>
</head>
<body>

	<div class="profile">
		<img alt="프로필사진" src="assets/images/face.png" />
	</div>
	<div class="wrap">
		<form action="" method="post">
			<div class="box">
				<div class="box1">커버사진</div>
				<div class="box2"></div>
				<div class="box3"></div>
				<div class="box4">내가 쓴 글</div>
			</div>
			<div class="more_button">
				<input type="button" class="inp_more" value="더 보기" onclick="" />				
			</div>
		</form>
	</div>
	<table>
		<thead>
			<tr>
				<td>NO.</td>
				<td>TITLE</td>
				<td>VALUE</td>
			</tr>
		</thead>
	</table>
     
	

	

</body>
</html>