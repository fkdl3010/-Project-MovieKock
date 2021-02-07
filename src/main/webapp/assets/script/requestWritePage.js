let secret = document.querySelector('#pw');
let btn = document.querySelector('#secret');

	function btnHandler(){

	if(secret.className == 'display-none'){
	   secret.classList.replace('display-none' , 'display-block');
	   }else{
    secret.classList.replace('display-block' , 'display-none');
	   }

	   }

	function init(){
		btn.addEventListener('click', btnHandler);	
	
	}
	
	   
   function fn_send(f){
		if(f.title.value == '' || f.content.value == ''){
			alert('제목과 내용을 확인후 다시 입력해주세요');
			return;
		} else {
			f.action="requestListPage.do";
				f.submit();
			}
		}
   
	   init();
   
	
	