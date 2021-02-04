<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/requestPageCss/requestListPage.css"/>
	<div class="wrap">
		<div class="main">
			<div class="main_top_font">
				<p class="request_list">문의목록</p>
				<p class="request_do">문의하기</p>
			</div>
			<div class="main_bot">
				<div class="main_bot_inner">
					<table class="table request_list_table">
						<tr class="tr request_list_tr request_list_1st_tr">
							<td class="td request_list_td">문의 유형</td>
							<td class="td request_list_td">제목</td>
							<td class="td request_list_td">작성자</td>
							<td class="td request_list_td">문의 날짜</td>
							<td class="td request_list_td">답변 여부</td>
						</tr>
						<tr class="tr request_list_tr">
							<td class="td request_list_td">서비스</td>
							<td class="td request_list_td"><a href="request_written_page.do">제목</a></td>
							<td class="td request_list_td">작성자</td>
							<td class="td request_list_td">2021-01-28</td>
							<td class="td request_list_td">답변완료</td>
						</tr>
						<tr class="tr request_list_tr">
							<td class="td request_list_td">문의 유형</td>
							<td class="td request_list_td"><a href="">제목</a></td>
							<td class="td request_list_td">작성자</td>
							<td class="td request_list_td">2021-01-29</td>
							<td class="td request_list_td">답변 대기중</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	
<%@ include file="../template/footer.jsp" %>