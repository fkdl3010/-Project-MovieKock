<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 추가하기</title>
</head>
<style>
	table {
	    margin: auto;
	}
	input[type="text"] {
	    padding: 5px;
	    width: 230px;
	}
	img.top_logo {
	    width: 200px;
	}
	.logoBox {
	    text-align: center;
	}
	.foot {
	    width: 580px;
	    margin: auto;
	    text-align: right;
	}
	.bottom{
		text-align: right;
	}
</style>
<body>
	<div class="logoBox">
		<img src="/movie/assets/images/top_logo.jpg" class="top_logo">
	</div>
	<div class="main-movie-wrap">
		<form enctype="multipart/form-data" method="POST">
		
			<table border="1">
				<tbody>
					<tr>
						<td>영화 제목</td>
						<td><input type="text" name="movieTitle" id="movieTitle" onkeyup="fn_titleKeyup()"/><input type="button" value="중복체크" id="movieTitleCheck"></td>
					</tr>
					<tr>
						<td>감독</td>
						<td><input type="text" name="movieDirectorName"/><input type="file" name="movieDirectorImage" accept="image/jpg"/></td>
					</tr>
					<tr>
						<td>개봉일</td>
						<td><input type="text" name="movieDate" placeholder="yyyy-mm-dd"/></td>
					</tr>
					<tr>
						<td>개봉국가</td>
						<td><input type="text" name="movieNation" /></td>
					</tr>
					<tr>
						<td>줄거리</td>
						<td><textarea name="movieStory" rows="20" cols="60"></textarea></td>
					</tr>
					<tr>
						<td>장르</td>
						<td class="genreBox">
							<input type="checkbox" name="movieGenre" value="1"/>코미디
							<input type="checkbox" name="movieGenre" value="2"/>드라마
							<input type="checkbox" name="movieGenre" value="3"/>액션
							<input type="checkbox" name="movieGenre" value="4"/>로맨스
							<input type="checkbox" name="movieGenre" value="5"/>판타지
							<input type="checkbox" name="movieGenre" value="6"/>멜로<br>
							<input type="checkbox" name="movieGenre" value="7"/>모험
							<input type="checkbox" name="movieGenre" value="8"/>범죄
							<input type="checkbox" name="movieGenre" value="9"/>SF
							<input type="checkbox" name="movieGenre" value="10"/>스릴러
							<input type="checkbox" name="movieGenre" value="11"/>전쟁
							<input type="checkbox" name="movieGenre" value="12"/>공포
						
						</td>
					</tr>
					<tr>
						<td>평점</td>
						<td><input type="text" name="movieScore" placeholder="0~5"/></td>
					</tr>
					<tr>
						<td>관객수</td>
						<td><input type="text" name="movieAudience"/></td>
					</tr>
					<tr>
						<td>스냅샷</td>
						<td><input type="file" name="movieSnap" accept="image/jpg"/>
						</td>
					</tr>
					<tr>
						<td>포스터</td>
						<td><input type="file" name="moviePoster" accept="image/jpg"/>
						</td>
					</tr>
					<tr>
						<td>배우1</td>
						<td><input type="text" name="movieActor1"/><input type="file" name="movieActor1Image" accept="image/jpg"/>
						</td>
					</tr>
					<tr>
						<td>배우2</td>
						<td><input type="text" name="movieActor2"/><input type="file" name="movieActor2Image" accept="image/jpg"/>
						</td>
					</tr>
					<tr>
						<td>배우3</td>
						<td><input type="text" name="movieActor3"/><input type="file" name="movieActor3Image" accept="image/jpg"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="bottom"><input type="button" value="등록하기" onclick="fn_movieInsert(this.form)"/></td>
					</tr>
				</tbody>
			</table>
		<div class="foot">* jpg 파일만 첨부가 가능합니다.</div>
		</form>
	</div>
	
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
		
		function fn_movieInsert(f){
			
			if(f.movieTitle.value == ''){
				alert('제목은 필수입니다.');
				f.movieTitle.focus();
				return;
			}
			if(f.movieDirectorName.value == '' || f.movieDirectorImage.value == ''){
				alert('감독명과 사진은 필수입니다.');
				f.movieDirectorName.focus();
				return;
			}
			
			let date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/;
			
			if(!date_pattern.test(f.movieDate.value)){
				alert('개봉일 양식에 맞춰주세요.');
				f.movieDate.focus();
				return;
			}
			
			if(f.movieScore.value){
				
				if(f.movieScore.value < 0 || f.movieScore.value > 5){
					alert('평점은 0~5 사이의 값을 입력해 주세요.');
					f.movieScore.focus();
					return;
				}
			}
			
			if(f.movieSnap.value == ''){
				alert('스냅샷 파일을 등록해주세요.');
				return;
			}
			if(f.moviePoster.value == ''){
				alert('포스터 파일을 등록해주세요.');
				return;
			}
			
			if(f.movieActor1.value == '' && f.movieActor2.value == '' && f.movieActor3.value == '' && f.movieActor1Image.value == ''){
				alert('최소 배우 한명은 등록해주세요.');
				f.movieActor1.focus();
				return;
			}
			
			if(f.movieActor1.value){
				
				if(!f.movieActor1Image.value){
					alert('배우 이미지를 등록해 주세요');
					return;
				}
			}
			if(f.movieActor2.value){
				
				if(!f.movieActor2Image.value){
					alert('배우 이미지를 등록해 주세요');
					return;
				}
			}
			if(f.movieActor3.value){
				
				if(!f.movieActor3Image.value){
					alert('배우 이미지를 등록해 주세요');
					return;
				}
			}
			
			let checked = false;
			$('input[type=checkbox]').each(function(idx, element){
				
				if(element.checked == true){
					checked = true;
				}
			});
			
			if(!checked){
				alert('장르는 최소 1개 이상이여야 합니다.');
				return;
			}
			
			if(!document.querySelector('#movieTitleCheck').disabled){
				alert('영화 중복체크를 진행해 주세요.');
				return;
			}
			
			f.action = 'movieInsert.admin';
			f.submit();
			
		}
		
		$('#movieTitleCheck').on('click',handleMovieCheck);
		
		function handleMovieCheck(event){
			
			let movieTitle = $('#movieTitle').val();
			
			if(movieTitle == ''){
				alert('영화 제목을 입력해 주세요.');
				$('#movieTitle').focus();
				return;
			}
			
			
			$.ajax({
				url: 'movieTitleCheck/' + movieTitle,
				type: 'post',
				dataType: 'json',
				success: function(responseObj){
					
					if(responseObj.checkResult){
						alert('이 영화는 추가가 가능합니다');
						event.target.disabled = true;
					}else{
						alert('이 영화는 이미 존재합니다.');
						$('#movieTitle').focus();
					}
				},
				error: function(){
					alert('실패');
				}
			});
			
			
			
		}
		
		function fn_titleKeyup(){
			document.querySelector('#movieTitleCheck').disabled = false;	
		}
		
		
		
	</script>
	
</body>
</html>