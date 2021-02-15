<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"	prefix="c" %>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
      <title></title>
<style>
	.none{
		display: none;
	}
</style>      

<link rel="stylesheet" href="/movie/assets/style/myPage.css"/>
        <div class="big-box">
                <i id="profile" class="fas fa-user-circle"></i>
                <!-- 초기 값은 커버사진 추가하기 버튼 -->
                <c:choose>
                	<c:when test="${loginUser.user_image_name == 'none' }">
                		<input type="button" value="커버사진 추가하기"/>
                	</c:when>
                	<c:otherwise>
                		<input type="button" value="커버사진 변경하기"/>
                	
                	</c:otherwise>
                </c:choose>
              <div class="small-box" id="card-box1">
              	<c:if test="${empty loginUser }">
              		없음
              	</c:if>
              	
              	<c:if test="${not empty loginUser }">
              	        
              	     <!--  비밀번호 : <input type="password" id="pw" placeholder="변경할 비밀번호를 입력하세요" onkeyup="pwRegCheck()"onClick="passWord()"readonly /><br>
              	    <span class="normal" id="pwRegBox"></span>   
              	       비밀번호 확인 : <input type="password" id="pwCheck" class="pw_check" class="none" placeholder="비밀번호를 확인해주세요." readonly onkeyup="pwEqualCheck()"/><br> 
              		<div id="pwConfirm" class="normal" style="display: none;">비밀번호가 일치하지 않습니다.</div> <br> --> 
              		닉네임: <input type="text" id="nickName" value="${loginUser.user_nickname }" readonly onkeyup="nickCheck()"/>
              				<input type="button" id="nickNameCheckbtn" class="none" value="중복체크" onclick="fn_nickCheck()"/><br>
              		이름: <input type="text" id="name" value="${loginUser.user_name }" readonly/><br>
              		이메일: <input type="text" id="email" value="${loginUser.user_email }" readonly onkeyup="emailCheck()"/>
              				<input type="button" id="emailCheckbtn" class="none" value="중복체크" onclick="fn_emailCheck()"/><br>
              		휴대폰 번호: <input type="text" id="phone" value="${loginUser.user_phone }" readonly/><br>
              		가입일: <input type="text" id="date" value="${loginUser.user_date }" readonly/><br>
              	</c:if>
                
                <input type="button" id="update" class="none" value="수정하기" onclick="fn_userUpdate()"/>
                <input type="button" id="alter" value="수정" onclick="fn_userAlter()"/>
              </div>
              <div class="small-box"  id="card-box2"></div>
              <div class="small-box"  id="card-box3"></div>
            </div>
    </body>
<script type="text/javascript">
/*sha256 적용 함수  */
function SHA256(s){
    
    var chrsz   = 8;
    var hexcase = 0;
  
    function safe_add (x, y) {
        var lsw = (x & 0xFFFF) + (y & 0xFFFF);
        var msw = (x >> 16) + (y >> 16) + (lsw >> 16);
        return (msw << 16) | (lsw & 0xFFFF);
    }
  
    function S (X, n) { return ( X >>> n ) | (X << (32 - n)); }
    function R (X, n) { return ( X >>> n ); }
    function Ch(x, y, z) { return ((x & y) ^ ((~x) & z)); }
    function Maj(x, y, z) { return ((x & y) ^ (x & z) ^ (y & z)); }
    function Sigma0256(x) { return (S(x, 2) ^ S(x, 13) ^ S(x, 22)); }
    function Sigma1256(x) { return (S(x, 6) ^ S(x, 11) ^ S(x, 25)); }
    function Gamma0256(x) { return (S(x, 7) ^ S(x, 18) ^ R(x, 3)); }
    function Gamma1256(x) { return (S(x, 17) ^ S(x, 19) ^ R(x, 10)); }
  
    function core_sha256 (m, l) {
         
        var K = new Array(0x428A2F98, 0x71374491, 0xB5C0FBCF, 0xE9B5DBA5, 0x3956C25B, 0x59F111F1,
            0x923F82A4, 0xAB1C5ED5, 0xD807AA98, 0x12835B01, 0x243185BE, 0x550C7DC3,
            0x72BE5D74, 0x80DEB1FE, 0x9BDC06A7, 0xC19BF174, 0xE49B69C1, 0xEFBE4786,
            0xFC19DC6, 0x240CA1CC, 0x2DE92C6F, 0x4A7484AA, 0x5CB0A9DC, 0x76F988DA,
            0x983E5152, 0xA831C66D, 0xB00327C8, 0xBF597FC7, 0xC6E00BF3, 0xD5A79147,
            0x6CA6351, 0x14292967, 0x27B70A85, 0x2E1B2138, 0x4D2C6DFC, 0x53380D13,
            0x650A7354, 0x766A0ABB, 0x81C2C92E, 0x92722C85, 0xA2BFE8A1, 0xA81A664B,
            0xC24B8B70, 0xC76C51A3, 0xD192E819, 0xD6990624, 0xF40E3585, 0x106AA070,
            0x19A4C116, 0x1E376C08, 0x2748774C, 0x34B0BCB5, 0x391C0CB3, 0x4ED8AA4A,
            0x5B9CCA4F, 0x682E6FF3, 0x748F82EE, 0x78A5636F, 0x84C87814, 0x8CC70208,
            0x90BEFFFA, 0xA4506CEB, 0xBEF9A3F7, 0xC67178F2);

        var HASH = new Array(0x6A09E667, 0xBB67AE85, 0x3C6EF372, 0xA54FF53A, 0x510E527F, 
                   0x9B05688C, 0x1F83D9AB, 0x5BE0CD19);

        var W = new Array(64);
        var a, b, c, d, e, f, g, h, i, j;
        var T1, T2;
  
        m[l >> 5] |= 0x80 << (24 - l % 32);
        m[((l + 64 >> 9) << 4) + 15] = l;
  
        for ( var i = 0; i<m.length; i+=16 ) {
            a = HASH[0];
            b = HASH[1];
            c = HASH[2];
            d = HASH[3];
            e = HASH[4];
            f = HASH[5];
            g = HASH[6];
            h = HASH[7];
  
            for ( var j = 0; j<64; j++) {
                if (j < 16) W[j] = m[j + i];
                else W[j] = safe_add(safe_add(safe_add(Gamma1256(W[j - 2]), W[j - 7]), Gamma0256(W[j - 15])), W[j - 16]);
  
                T1 = safe_add(safe_add(safe_add(safe_add(h, Sigma1256(e)), Ch(e, f, g)), K[j]), W[j]);
                T2 = safe_add(Sigma0256(a), Maj(a, b, c));
  
                h = g;
                g = f;
                f = e;
                e = safe_add(d, T1);
                d = c;
                c = b;
                b = a;
                a = safe_add(T1, T2);
            }
  
            HASH[0] = safe_add(a, HASH[0]);
            HASH[1] = safe_add(b, HASH[1]);
            HASH[2] = safe_add(c, HASH[2]);
            HASH[3] = safe_add(d, HASH[3]);
            HASH[4] = safe_add(e, HASH[4]);
            HASH[5] = safe_add(f, HASH[5]);
            HASH[6] = safe_add(g, HASH[6]);
            HASH[7] = safe_add(h, HASH[7]);
        }
        return HASH;
    }
  
    function str2binb (str) {
        var bin = Array();
        var mask = (1 << chrsz) - 1;
        for(var i = 0; i < str.length * chrsz; i += chrsz) {
            bin[i>>5] |= (str.charCodeAt(i / chrsz) & mask) << (24 - i%32);
        }
        return bin;
    }
  
    function Utf8Encode(string) {
        string = string.replace(/\r\n/g,"\n");
        var utftext = "";
  
        for (var n = 0; n < string.length; n++) {
  
            var c = string.charCodeAt(n);
  
            if (c < 128) {
                utftext += String.fromCharCode(c);
            }
            else if((c > 127) && (c < 2048)) {
                utftext += String.fromCharCode((c >> 6) | 192);
                utftext += String.fromCharCode((c & 63) | 128);
            }
            else {
                utftext += String.fromCharCode((c >> 12) | 224);
                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                utftext += String.fromCharCode((c & 63) | 128);
            }
  
        }
  
        return utftext;
    }
  
    function binb2hex (binarray) {
        var hex_tab = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
        var str = "";
        for(var i = 0; i < binarray.length * 4; i++) {
            str += hex_tab.charAt((binarray[i>>2] >> ((3 - i%4)*8+4)) & 0xF) +
            hex_tab.charAt((binarray[i>>2] >> ((3 - i%4)*8  )) & 0xF);
        }
        return str;
    }
  
    s = Utf8Encode(s);
    return binb2hex(core_sha256(str2binb(s), s.length * chrsz));
  
}
/*  

function passWord() {
	
	var flag = false;
	var count=0;
	
	while(count<3 && flag  == false){
		var pw = prompt('비밀번호를 입력하세요','');
		const shaPw =SHA256(pw); 
 		  	 
			if(shaPw=='${loginUser.user_pw}'){
        			alert('로그인에 성공하였습니다');
        				flag = true;
        				break;
   		 		}else{
        			alert('비밀번호가 틀렸습니다');
        				count++;
        				if(count==3){
        					alert('입력 횟수를 초과했습니다. 처음부터 다시 시도해주세요.');
        					}
    				}
			}
	
	
		const nowPw = $('#pw').val();
		const shaNowPw = SHA256(nowPw);
		
		if(shaNowPw=='${loginUser.user_pw}'){
			$('#pwRegBox').text('기존 비밀번호와 동일합니다.');
		}
	}

*/
	
	/* 유저정보 */
	let userNo = ${loginUser.user_no};
	
/* let pw; */	
	let nickName;
	let name;
	let email;
	let phone;
	
	function initValue(){
		
		
	/*  	pw= document.querySelector('#pw');
		pwCheck= document.querySelector('#pwCheck');*/
		nickName = document.querySelector('#nickName');
		name = document.querySelector('#name');
		email = document.querySelector('#email');
		phone = document.querySelector('#phone');
	}
	
	/* 기존 유저 정보 */
	let orPw;
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
		/*  
			pw.removeAttribute('readonly');
			pwCheck.removeAttribute('readonly');*/	
			nickName.removeAttribute('readonly');
			name.removeAttribute('readonly');
			email.removeAttribute('readonly');
			phone.removeAttribute('readonly');
		}else{
			alterBtn.value = '수정';
			
		
			updateBtn.classList.add('none');
			nickCheckBtn.classList.add('none');
			emailCheckBtn.classList.add('none');
			
		/* 	pw.setAttribute('readonly','readonly');
			pwCheck.setAttribute('readonly','readonly'); */
			nickName.setAttribute('readonly','readonly');
			name.setAttribute('readonly' ,'readonly');
			email.setAttribute('readonly','readonly');
			phone.setAttribute('readonly','readonly');
		}
	}
	
	function fn_userAlter(){
		
		initValue();
		
		if(alterBtn.value == '수정'){
			
		/* orPw = pw.value; */	
			orNickName = nickName.value;
			orName = name.value;
			orEmail = email.value;
			orPhone = phone.value;
			valueClassReadOnly('remove');
			
		}else{
			
		/* pw.value= orPw; */	
			nickName.value = orNickName;
			name.value = orName;
			email.value = orEmail;
			phone.value = orPhone;
			
			valueClassReadOnly();
		}
		
	}
	
	/* 비밀번호 유효성 체크  */
	function pwRegCheck() {


		const regPw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
		const pwVal = $('#pw').val();
		pwEqualCheck();
		if (regPw.test(pwVal)) {
			$('#pwRegBox').attr('class', 'possible');
			$('#pwRegBox').text('사용 가능한 비밀번호 입니다.');
			return true;
		} else {
			$('#pwRegBox').attr('class', 'impossible');
			$('#pwRegBox').text('비밀번호는 8자 이상, 숫자/문자/특수문자를 모두 포함해야 합니다.');
			return false;
		}
	}
	
	function pwEqualCheck() {

		const pwVal = $('#pw').val();
		const pwCheck = $('#pwCheck').val();
		const pwConfirm = $('#pwConfirm');
		if (pwCheck == '') {
			pwConfirm.css('display', 'none');
			return false;
		}
		if (pwVal != pwCheck) {
			pwConfirm.css('display', 'block').text('비밀번호가 일치하지 않습니다.')
					.attr('class', 'impossible');
			return false;
		} else {
			pwConfirm.css('display', 'block').text('비밀번호가 일치합니다').attr(
					'class', 'possible');
			return true;
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
				"user_pw" : pw.value,
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
						/*pw.value = $('#pw').val();  */	
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