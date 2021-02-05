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
init();