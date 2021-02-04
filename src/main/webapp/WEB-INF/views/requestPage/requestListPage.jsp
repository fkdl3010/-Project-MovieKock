<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/request_page_css/request_list_page.css"/>
	<div class="wrap">
		<div class="main">
			<div class="main_top_font">
				<p class="request_list">문의목록</p>
				<p class="request_do">문의하기</p>
			</div>
			<div class="main_bot">
				<div class="main_bot_inner">
					<table class="table request_list_table">
					<thead>
						<tr class="tr request_list_tr request_list_1st_tr">
							<td class="td request_list_td">문의 유형</td>
							<td class="td request_list_td">제목</td>
							<td class="td request_list_td">작성자</td>
							<td class="td request_list_td">문의 날짜</td>
							<td class="td request_list_td">답변 여부</td>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty list}">
							<tr>
								<td colspan="4">없음</td>
							</tr>
						</c:if>
						<c:if test="${not empty list}">
						<c:forEach var="fqpDto" items="${list}" varStatus="k">
							<tr>
								<td>${totalRecord - ((page - 1) * recordPerPage + k.index)}</td>
								<td>${fnqDto.faq_no}</td>
								<td><a href="request_view.do?no=${fnqDto.no}&page=${page}">${fnqDto.title}</a></td>
								<td>${fnqDto.user_no}</td>
								<td>${fnqDto.faq_date;}</td>
								<td>${fnqDto.답변여부}</td>
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