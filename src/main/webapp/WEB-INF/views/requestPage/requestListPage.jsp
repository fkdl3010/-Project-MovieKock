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
						<tr class="request_list_1st_tr">
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
						<c:forEach var="faqDto" items="${list}" varStatus="k">
							<tr>
								<td>${faqDto.faq_select}</td>
								<td><a href="requestView.do?no=${faqDto.faq_no}&page=${page}">${faqDto.title}</a></td>
								<td>${faqDto.user_nickname}</td>
								<td>${faqDto.faq_date}</td>
								<td>${faqDto.faq_yn}</td>
							</tr>
							<tr>
								<td>1</td>
								<td>2</td>
								<td>3<a href="requestView.do?no=${faqDto.no}&page=${page}">${faqDto.title}</a></td>
								<td>4</td>
								<td>5</td>
								<td>6</td>
							</tr>
							<tr>
								<td>7</td>
								<td>8</td>
								<td>9<a href="requestView.do?no=${faqDto.no}&page=${page}">${faqDto.title}</a></td>
								<td>10</td>
								<td>11</td>
								<td>12</td>
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