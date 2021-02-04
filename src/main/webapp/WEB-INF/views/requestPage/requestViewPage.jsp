<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>

<link rel="stylesheet" href="/movie/assets/style/requestPageCss/requestViewPage.css"/>
	<div class="wrap">
		<div class="main">
			<div class="main_bot">
				<table class="table request_list_table">
					<tr class="tr request_list_tr request_list_1st_tr">
						<td class="td request_list_td">내용</td>
						<td class="td request_list_td">문의 날짜</td>
						<td class="td request_list_td">답변 여부</td>
					</tr>
					<tr class="tr request_list_tr_resp">
						<td class="td request_list_td_resp">Q.gflksgfsdglkshksdjfkehfopkfjsbgfosmofidjfslkjf</td>
						<td class="td request_list_td_resp">2021-01-28 15:35</td>
						<td class="td request_list_td_resp">답변완료</td>
					</tr>
					<tr class="tr request_list_tr_resp">
						<td class="td request_list_td_resp">A. snsdijnsdklfnskjjsdlfmsknsdmskjgisdgsdngsdglsdnfsdfslkdlkgjasdlkjglsk</td>
						<td class="td request_list_td_resp">2021-01-29 16:53</td>
						<td class="td request_list_td_resp"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>

<%@ include file="../template/footer.jsp" %>