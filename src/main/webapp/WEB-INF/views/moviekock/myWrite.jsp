<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
	.container {
		width: 1500px;
		height: 1500px;
	}
		
	#box1 { 
		width: 400px;
		height: 600px;
		margin-left: 750px;
		margin-top: 400px;
		background: gray;
		z-index: 3;  /* box1의 z-index값이 box2보다 더 크므로 앞에 나타난다. */
		border-radius: 75px 75px 0px 0px;
		text-align: center;
		
	}
	#box2 {
		width: 400px;
		height: 500px;
		bottom: 0px;
		border: auto;
		background: purple;
		z-index: 2;
		margin-top: -400px;
		margin-left: 750px;
	}
	#box3 {
		width: 300px;
		height: 400px;
		border: 3px solid;
		margin-top: -450px;
		margin-left: 800px;
		background: red;
		z-index: 1;
	}
	
	
	
	table {
		width: 305px;
		background: lightgray;
		margin-top: -1270px;
		margin-left: 800px;
		padding: 10px;
		text-align: center;
		vertical-align: middle;
		border-top: solid gray;
		border-bottom: solid gray;
		border-collapse: collapse;
	}
	
	form {
		margin-top: -870px;
		margin-left: 1045px;
	}
	
	
</style>
</head>
<body>

	<div class="container">
		<div id="box1" class="box">커버사진</div>
		<div id="box2" class="box">내가 쓴글</div>
		<div id="box3" class="box"></div>
	</div>
	
	<form action="#입력정보를보낼경로" method="post">
	<button>더 보기</button>
	</form>
	
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