<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기상세보기" name="title" />
</jsp:include>

<link rel="stylesheet" href="/movie/assets/style/qnaPageCss/qnaViewPage.css"/>
	<div class="wrap">
		<div class="main">
			<div class="main_bot">
				<table class="table qna_list_table">
					<tr class="tr qna_list_tr qna_list_1st_tr">
						<td class="td qna_list_td">내용</td>
						<td class="td qna_list_td">문의 날짜</td>
						<td class="td qna_list_td">답변 여부</td>
					</tr>
					<tr class="tr qna_list_tr_resp">
						<td class="td qna_list_td_resp">${qnaDto.qna_content}</td>
						<td class="td qna_list_td_resp">${qnaDto.qna_date}</td>
						<td class="td qna_list_td_resp">${qnaDto.qna_yn}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

<%@ include file="../template/footer.jsp" %>