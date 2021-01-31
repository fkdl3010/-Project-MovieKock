<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
      <title></title>
<link rel="stylesheet" href="/movie/assets/style/myPage.css"/>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
        <div class="big-box">
              <div class="small-box" id="card-box1">
                <i id="profile" class="fas fa-user-circle"></i>
                <input type="button" id="alter" value="수정">
                </div>
              <div class="small-box"  id="card-box2"></div>
              <div class="small-box"  id="card-box3"></div>
            </div>
    </body>
</html>