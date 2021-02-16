<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/qnaPagecss/qnaListpage.css"/>

<script type="text/javascript">
	
	$(function(){  // 본문을 모두 읽은 뒤 처리하시오. (페이지 로드 이벤트)
		
		var qnaViews = $('.qnaView');
		$.each(qnaViews, function(idx, qnaView) {
			$(qnaView).click(function(){
				var pw = $(this).attr('data-pw');  // 게시글의 비밀번호
				var no = $(this).attr('data-no');  // 게시글의 번호
				var input_pw = ??;  // 모달/팝업등에서 사용자가 입력한 비밀번호
				if (pw == input_pw) {
					location.href = 'qnaView.do?qna_no=' + no + '&page=${page}';
				} else {
					alert('비밀번호를 확인하세요.');
				}
			});
		});
		
	});
	
</script>
	<div class="wrap">
		<div class="main">
			<div class="main_top_font">
				<p class="qna_list">문의목록</p>
				<a href="qnaWritePage.do" class="qna_do">문의하기</a>
			</div>
			<div class="main_bot">
				<div class="main_bot_inner">
					<table class="table qna_list_table">
					<thead>
						<tr class="qna_list_1st_tr">
							<td class="td qna_list_td">게시글 번호</td>
							<td class="td qna_list_td">문의 유형</td>
							<td class="td qna_list_td">제목</td>
							<td class="td qna_list_td">작성자</td>
							<td class="td qna_list_td">문의 날짜</td>
							<td class="td qna_list_td">답변 여부</td>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty list}">
							<tr>
								<td colspan="4">없음</td>
							</tr>
						</c:if>
						<c:if test="${not empty list}">
						<c:forEach var="qnaDto" items="${list}" varStatus="k">
							<tr>
								<td>${qnaDto.qna_no}</td>
								<td>${qnaDto.qna_select}</td>
								<td><a href="qnaView.do?qna_no=${qnaDto.qna_no}&page=${page}" id="pw">${qnaDto.qna_title}</a></td>
								<td>
									<div class="qnaView" data-pw="${qnaDto.qna_pw}" data-no="${qnaDto.qna_no}">${qnaDto.qna_title}</div>
								</td>
								<td>${qnaDto.user_nickname}</td>
								<td>${qnaDto.qna_date}</td>
								<td>답변여부</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
							${paging}
						</td>
					</tr>
				</tfoot>
			</table>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Modal -->
			<div id="modal" class="searchModal">
				<div class="searchModalContent">
					<div class="pageHeader">
						<h1>비밀번호를 입력하세요</h1>
					</div>
						<div class="row">
						<div class="col-sm-12">
						<div class="row">
						<div class="col-sm-12">
							<input type="password" name="mPw" id="mPw" class="inpPw" placeholder="" />
						</div>
						</div>
						</div>
						</div>
						<hr>
						<div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="closeModal();">
						<span class="pop_bt modalCloseBtn" style="font-size: 13pt;">
						</span>
					</div>
				</div>
			</div>

		<script>
		
		const { value: password } = await Swal.fire({
			  title: 'Enter your password',
			  input: 'password',
			  inputLabel: 'Password',
			  inputPlaceholder: 'Enter your password',
			  inputAttributes: {
			    maxlength: 10,
			    autocapitalize: 'off',
			    autocorrect: 'off'
			  }
			})

			if (password) {
			  Swal.fire(`Entered password: ${password}`)
			}
		
		
		
		
		
		
		</script>
	
	
	
<%@ include file="../template/footer.jsp" %>