<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/qnaPagecss/qnaListpage.css"/>
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
								<td><a href="qnaView.do?qna_no=${qnaDto.qna_no}&page=${page}">${qnaDto.qna_title}</a></td>
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
	
<%@ include file="../template/footer.jsp" %>