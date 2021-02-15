<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
      <title></title>

<link rel="stylesheet" href="/movie/assets/style/myPage.css"/>
        <div class="big-box">
                <i id="profile" class="fas fa-user-circle"></i>
                <!-- 초기 값은 커버사진 추가하기 버튼 -->
                <c:choose>
                	<c:when test="${loginUser.user_image_name == 'none' }">
                		<input type="button" class="inp_btn inp_img_btn" value="커버사진 추가하기"/>
                	</c:when>
                	<c:otherwise>
                		<input type="button" class="inp_btn inp_img_btn" value="커버사진 변경하기"/>
                	
                	</c:otherwise>
                </c:choose>
              <div class="small-box" id="card-box1">
              	<c:if test="${empty loginUser }">
              		없음
              	</c:if>
              	
              	<c:if test="${not empty loginUser }">
              		닉네임: <input type="text" id="nickName" value="${loginUser.user_nickname }" readonly onkeyup="nickCheck()"/>
              				<input type="button" id="nickNameCheckbtn" class="btn btn-info none" value="중복체크" onclick="fn_nickCheck()"/><br>
              		이름: <input type="text" id="name" value="${loginUser.user_name }" readonly/><br>
              		이메일: <input type="text" id="email" value="${loginUser.user_email }" readonly onkeyup="emailCheck()"/>
              				<input type="button" id="emailCheckbtn" class="btn btn-info none" value="중복체크" onclick="fn_emailCheck()"/><br>
              		휴대폰 번호: <input type="text" id="phone" value="${loginUser.user_phone }" readonly/><br>
              		가입일: <input type="text" id="date" value="${loginUser.user_date }" readonly/><br>
              	</c:if>
                
                <input type="button" id="update" class="inp_btn update_btn none" value="수정하기" onclick="fn_userUpdate()">
                <input type="button" id="alter" class="inp_btn alter_btn" value="수정" onclick="fn_userAlter()">
              </div>
              <div class="small-box"  id="card-box2"></div>
              <div class="small-box"  id="card-box3"></div>
            </div>
    </body>
<script type="text/javascript">
	
	/* 유저정보 */
	let userNo = ${loginUser.user_no}2;
	
	let nickName;
	let name;
	let email;
	let phone;
	
	function initValue(){
		
		nickName = document.querySelector('#nickName');
		name = document.querySelector('#name');
		email = document.querySelector('#email');
		phone = document.querySelector('#phone');
	}
	
	/* 기존 유저 정보 */
	let orNickName;
	let orName;
	let orEmail;
	let orPhone;
	
	/* 버튼정보 */
	const updateBtn = document.querySelector('#update');
	const alterBtn = document.querySelector('#alter');
	const nickCheckBtn = document.querySelector('#nickNameCheckbtn');
	const emailCheckBtn = document.querySelector('#emailCheckbtn');
	
	function valueClassReadOnly(controll){
		
		if(controll == 'remove'){
			alterBtn.value = '취소';

			updateBtn.classList.remove('none');
			nickCheckBtn.classList.remove('none');
			emailCheckBtn.classList.remove('none');
			
			nickName.removeAttribute('readonly');
			name.removeAttribute('readonly');
			email.removeAttribute('readonly');
			phone.removeAttribute('readonly');
		}else{
			alterBtn.value = '수정';

			updateBtn.classList.add('none');
			nickCheckBtn.classList.add('none');
			emailCheckBtn.classList.add('none');
			
			nickName.setAttribute('readonly','readonly');
			name.setAttribute('readonly' ,'readonly');
			email.setAttribute('readonly','readonly');
			phone.setAttribute('readonly','readonly');
		}
	}
	
	function fn_userAlter(){
		
		initValue();
		
		if(alterBtn.value == '수정'){
			
			
			orNickName = nickName.value;
			orName = name.value;
			orEmail = email.value;
			orPhone = phone.value;
			valueClassReadOnly('remove');
			
		}else{
			
			
			nickName.value = orNickName;
			name.value = orName;
			email.value = orEmail;
			phone.value = orPhone;
			
			valueClassReadOnly();
		}
		
	}
	
	/* 닉네임 체크 */
	function fn_nickCheck(){
			
			const userNick = nickName.value;
			
			if(orNickName == userNick){
				alert('기존 정보와 동일합니다.');
				$('#nickNameCheckbtn').attr('disabled','true');
				return true;
			}
			
			
			if(userNick != null && userNick != ''){
			
				$.ajax({
					url: 'userNickCheck/' + userNick,
					type: 'post',
					dataType: 'json',
					success: function(responseJSON){
						if(responseJSON.nickCheckResult == 'yes'){
							alert('이 닉네임은 사용 가능합니다.');
							$('#nickNameCheckbtn').attr('disabled','true');
							return true;
						}else{
							alert('사용 중인 닉네임입니다.');
							$('#nickname').focus();
							return false;
						}
					},
					error: function(){
						alert('오류');
						
					}
					
				});
				
				return true;
			}
			
			if(userNick == ''){
				
				alert('닉네임을 입력해주세요');
				$('#nickname').focus();
				return false;
			}
			
		}
	
	/* 텍스트 입력 시 disabled 해제 */
	function nickCheck(){
		$('#nickNameCheckbtn').removeAttr('disabled');
	}
	
	/* 이메일 체크 */
	function fn_emailCheck(){
		
		
		const userEmail = $('#email').val();
		
		if(orEmail == userEmail){
			alert('기존 정보와 동일합니다.');
			$('#emailCheckbtn').attr('disabled','true');
			return true;
		}
		
		if(userEmail != null && userEmail != ''){
			
		
			$.ajax({
				url: 'userEmailCheck/' + userEmail + '/',
				type: 'post',
				dataType: 'json',
				success: function(responseJSON){
					if(responseJSON.emailCheckResult == 'yes'){
						alert('이 이메일은 사용 가능합니다.');
						$('#emailCheckbtn').attr('disabled','true');
						$('#phone').focus();
						return true;
					}else{
						alert('사용 중인 이메일입니다.');
						$('#email').focus();
						return false;
					}
				},
				error: function(){
					alert('오류');
				}
				
			});
		
			return true;
		}else{
			alert('이메일을 입력해주세요');
			$('#email').focus();
			return false;
		}
	}
	
	function emailCheck(){
		$('#emailCheckbtn').removeAttr('disabled');
	}
	
	
	function fn_userUpdate(){
		
		if($('#nickNameCheckbtn').attr('disabled') != 'disabled'){
			alert('닉네임 중복확인을 진행해 주세요.');
			$('#nickName').focus();
			return;
		}
		
		if($('#name').val() == ''){
			alert('이름을 입력해 주세요');
			$('#name').focus();
			return;
		}
		
		if($('#emailCheckbtn').attr('disabled') != 'disabled'){
			alert('이메일 중복확인을 진행해 주세요.');
			$('#email').focus();
			return;
		}
		
		if($('#phone').val() == ''){
			alert('핸드폰 번호를 입력해 주세요');
			$('#phone').focus();
			return;
		}
		
		const sendUserObj = {
				"user_no": userNo,
				"user_nickname": nickName.value,
				"user_name": name.value,
				"user_email": email.value,
				"user_phone": phone.value
		}
		
		if(confirm('정보를 변경하시겠습니까?')){
			
			$.ajax({
				url: "userUpdate.do",
				type: "post",
				data: JSON.stringify(sendUserObj),
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				success: function(responseObj){
					
					if(responseObj.updateResult){
						alert('정보가 수정되었습니다.');
						nickName.value = $('#nickName').val();
							name.value = $('#name').val();
						   email.value = $('#email').val();
						   phone.value = $('#phone').val();
						   valueClassReadOnly();
						   
					}else{
						alert('정보가 변경되지 않았습니다.');
					}
				},
				error: function(){
					alert('오류');
				}
				
				
			});
		}
		
	}
	

</script>
</html>