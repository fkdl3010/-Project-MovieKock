<!DOCTYPE html>
<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기 페이지" name="title" />
</jsp:include>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.wrap {
		width: 100%;
		height: 1500px;
		margin:auto;
	}
	h2 {
		position: absolute;
		left: 500px;
		top: 220px;
		font-weight: bold;
		
	}
	p {
		position: absolute;
		left: 650px;
		top: 160px;
		font-size: 50px;
		font-weight: bold;
	}
	
	.box1 {
		width: 50%;
		height: 60%;
		border: 2px solid;
		position: absolute;
		left: 500px;
		top: 300px;
	}
	.box2 {
		width: 90%;
		height: 60%;
		position: relative;
		left: 50px;
		top: 110px;
	}
	select {
		width: 175px;
		height: 50px;
		margin: auto;
		position: relative;
		left: 50px;
		top: 25px;
    }
    label {
        position: relative;
        right: -575px;
        top: -35px;
        width: 150px;
        height: 50px;
        text-align: center;
        font-size: 20px;
        margin: 5px;
        padding: 5px;
        
    }
  
    #secret {
        display: none;
    }
	
    .secret2:active > .pw {
        visibility: visible;
    }
    
	
	.pw {
		width: 250px;
		height: 40px;
		margin: auto;
		position: absolute;
		right: 40px;
		top: 90px;
        visibility: collapse;
        background: #ddd;
	}
  
    #secret-btn {
        display: inline-block;
        margin-top: 12px;
        background-color: #ff7;
        border: 1px solid;
        border-radius: 3px;
    }
    #secret:checked ~ * .expandable {
        visibility: visible;
    }
  
    #expand-toggle:checked ~ #expand-btn {
        background-color: #ccc;
    }
	
	.title {
		width: 350px;
		height: 40px;
		margin: auto;
		position: absolute;
		left: 50px;
		top: 90px;
	}
	.btn {
		width: 135px;
		height: 40px;
		margin: auto;
		position: absolute;
		right: 40px;
		top: 520px;
	}
	.write {
		width: 100%;
		height: 100%;
		position: reletive;
		left: 50px;
		top: 70px;
	}

</style>
</head>
<body>

	<h2>문의 목록</h2>
	<p>문의 하기</p>
	
	<div class="wrap">
		<div class="box1">
			<form action="#입력정보를보낼경로" method="post">
				<select name="select">
						<option value="문의유형" selected>컨텐츠문제</option>
						<option value="결제오류">결제오류</option>
						<option value="버그문제">버그문제</option>
						<option value="건의사항">건의사항</option>
						<option value="기타문의">기타문의</option>
					</select>
				</form>
				<input type="text" id="title" class="title" placeholder="제목을 입력하세요. " />
				<input type="button" id="btn" class="btn" value="문의하기" onclick="" />
				<input type="checkbox" id="secret" />
				<input type="password" name="pw" value="pw" id="pw" placeholder="비밀번호를 입력하세요. " />
				<label for="secret" id="secret-btn">나만 보기</label>
			<div class="box2">
				<textarea rows="100" cols="100" class="write" placeholder="문의 내용을 입력하세요."></textarea>
			</div>
		</div>
	</div>
	
	
</body>
</html>