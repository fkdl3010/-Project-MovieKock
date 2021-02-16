/**
 * 
 */

/* 스크롤 하단 감지 영화 리스트뽑아오기 */
		let movieNo = document.querySelector('#movieNo').value;
        let scrollCount = 2;
  		
  $(window).scroll(function() {
        
        let scrolltop = $(window).scrollTop();
        let height = $(document).height();
        let height_win = $(window).height();
        
        
        /* 스크롤이 하단에 위치한다면 */
     if (Math.round( $(window).scrollTop()) == $(document).height() - $(window).height()) {
        
        	$.ajax({
        		url: 'scrollCommentList/'+ scrollCount + '/' + movieNo,
        		type: 'get',
        		dataType: 'json',
        		success: function(responseObj){
        			const commentList = responseObj.scrollCommentList;
        			
        			commentList.forEach(function(commentDto){
        				const commentOne = `<div class="main-top">
											  <div class="box1">
									            <div class="box1_top">
											    <i class="fas fa-user-alt fa-4x" id=user_icon1></i>
									            <div class="box1_name">${commentDto.user_nickname }</div>
									            <div class="box1_star_box">★ ${commentDto.comment_score }</div>
											    </div>
											    <div class="box1_middle">
											    	<textarea class="commentContents" readonly>${commentDto.comment_content }
											    	</textarea>
											    </div>
									            <div class="box1_bottom">
									              <p>좋아요</p>
									              <i class="far fa-thumbs-up fa-2x" id="finger1">${commentDto.comment_like }</i>
									            </div>
											  </div>
											</div>`;
        				$('.wrap').append(commentOne);
        			});
        			
        			
        			scrollCount++;
        		},
        		error: function(){
        			
        		}
        		
        	});
        }
        
   });  