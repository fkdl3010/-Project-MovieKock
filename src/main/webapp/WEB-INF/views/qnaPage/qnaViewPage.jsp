<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기상세보기" name="title" />
</jsp:include>

<link rel="stylesheet" href="/movie/assets/style/qnaPageCss/qnaViewPage.css"/>
	<div class="wrap">
		<div class="main">
			<div class="main_user">
				<table class="table qna_list_table1">
					<tr class="tr qna_list_tr qna_list_1st_tr">
						<td class="td qna_list_td">내용</td>
						<td class="td qna_list_td">문의 날짜</td>
						<td class="td qna_list_td">답변 여부</td>
					</tr>
					<tr class="tr qna_list_tr_resp1">
						<td class="td qna_list_td_resp">${qnaDto.qna_content}</td>
						<td class="td qna_list_td_resp">${qnaDto.qna_date}</td>
						<td class="td qna_list_td_resp">${qnaDto.qna_yn}</td>
					</tr>
				</table>
				<form method="post">
					<input type="button" class="deleteBtn" value="삭제"  onclick="fn_qnaDelete(this.form)" />
					<input type="hidden" name="qna_no" value="${qnaDto.qna_no}" />
				</form>
				<form method="get">
					<input type="button" class="listBtn" value="목록" onclick="fn_qnaListView(this.form)" />	
				</form>
			</div>
			<div class="main_admin">
				<table class="table qna_list_table2">
					<tr class="tr qna_list_tr_qna_list_2st_tr">
						<td class="td qna_list_td_resp">답변내용</td>
						<td class="td qna_list_td_resp">답변날짜</td>
						<td class="td qna_list_td_resp">답변여부</td>
					</tr>
					<tr class="tr qna_list_tr_resp2">
						<td class="td qna_list_td_resp">${qnaDto.qna_content}</td>
						<td class="td qna_list_td_resp">${qnaDto.qna_date}</td>
						<td class="td qna_list_td_resp">${qnaDto.qna_yn}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
					
	<script type="text/javascript">
 	
 	function fn_qnaDelete(f) {
		if (confirm('삭제할까요?')) {
			f.action = 'qnaDelete.do';
			f.submit();
		}
	}
 	function fn_qnaListView(f) {
			f.action = 'qnaListView.do';
			f.submit();
		}
	
 	
 	
 	</script>
	
	

<%@ include file="../template/footer.jsp" %>