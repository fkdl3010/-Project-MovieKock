let is_progress;
	 // 코멘트 보기
	 $('.comment_bot').on('click',handleCommentView);
	 
	 function handleCommentView(event){
		 	if(is_progress == true){
				return;
			}
			is_progress = true;
			const userNo = event.currentTarget.children[3].value;
			const movieNo = event.currentTarget.children[4].value;
			const commentNo = event.currentTarget.children[5].value;
			const userNickname = event.currentTarget.children[6].value;
			const commentContent = event.currentTarget.children[7].value;
			const date = event.currentTarget.children[8].value;
			const commentName = event.currentTarget.children[9].value;
			let movieTitle;
		 
		 $.ajax({
			 	url: 'getMovieTitle/' + movieNo,
				type: 'get',
				dataType: 'json',
				success: function(responseObj){
					
					movieTitle = responseObj.movieTitle;
					
					if(!movieTitle){
						alert('일치하는 영화없음');
					}
					sendModalView(userNo, movieNo, commentNo, userNickname, commentName, movieTitle, commentContent, date);
					
					setTimeout(function(){is_progress = false;}, 100);
				},
				error: function(){
					setTimeout(function(){is_progress = false;}, 500);
				}
			 
		 });
	 }
		
		/* 버튼 클릭 시 모달창에 정보전달 */
		function sendModalView(userNo, movieNo, commentNo, userNickname, commentName, movieTitle, commentContent, date){
			const modal = document.querySelector('.modal');
			modal.querySelector('.modal-title').innerText = `${userNickname} 님이 작성하신 글입니다.`;
			
			const modalContents = document.querySelector('.main-wrapper-my-write');
			
			modalContents.querySelector('.movie-name-span').innerText = movieTitle.replaceAll('_', ' ');
			modalContents.querySelector('.movie-poster-img').style.backgroundImage = `url("/movie/assets/images/poster/${movieTitle}_포스터.jpg")`;
			modalContents.querySelector('.movie-poster-img').style.backgroundSize = '100% 100%';
			
			let contentTitle = `
								<input type="text" class="textOutline" value="${commentName}" id="contentTitle" readonly style="border:none;"/>
								`;
			modalContents.querySelector('.top-title-contents').innerHTML = contentTitle;
			
			modalContents.querySelector('.writer').innerText = `작성자: ${userNickname}`;
			modalContents.querySelector('.write-date').innerText = `작성일자: ${date}`;
			
			let contentTextarea = `<textarea class="contentTextArea textOutline" id="commentContents" readonly style="resize:none; border:none;">${commentContent}</textarea>`;
			
//				document.createElement('textarea');
//			contentTextarea.className = 'contentTextArea';
//			contentTextarea.innerText = commentContent;
			modalContents.querySelector('.right-textarea-contents').innerHTML = contentTextarea;
			
			if(document.title == '내가 쓴 글 목록'){
				const modalBox = modal.querySelector('.main-wrapper-my-write');
				const updateBtn = modal.querySelector('#updateControlBtn');
				const deleteBtn = modal.querySelector('#deleteBtn');
				
				updateBtn.classList.remove('none');
				deleteBtn.classList.remove('none');
				
				modal.querySelector('#commentNo').setAttribute('value', commentNo);
				
			}
		}