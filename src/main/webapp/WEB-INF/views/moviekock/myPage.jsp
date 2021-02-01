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
                <i id="profile" class="fas fa-user-circle"></i>
              <div class="small-box" id="card-box1">
                <textarea id="text" rows="8" cols="60" readonly="readonly">
 이름 : 아무개
 나이 : 30
닉네임 : 배고파
                </textarea>
                <input type="button" id="alter" value="수정" >
                </div>
              <div class="small-box"  id="card-box2"></div>
              <div class="small-box"  id="card-box3"></div>
            </div>
    </body>
<script type="text/javascript">

$("#alter").click(function(event) {
	const btnElement = document.getElementById('alter');
	if(btnElement.getAttribute('vlaue')== "수정"){
		$("#text").attr("readonly", false); 
		btnElement.value = "저장"
	}else if(btnElement.getAttribute('vlaue')== "저장"){
		$("#text").attr("readonly", true); 
		btnElement.value = "수정"
	}
	
	})

</script>
</html>