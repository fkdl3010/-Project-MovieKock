<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="로그인 페이지" name="title" />
</jsp:include>
  <link rel="stylesheet" href="/movie/assets/style/myWritePage.css"/>

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