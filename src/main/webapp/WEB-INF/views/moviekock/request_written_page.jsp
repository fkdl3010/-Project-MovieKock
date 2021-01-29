<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	
	.wrap {
		width: 100%;
	}
	
	.main {
		margin: auto;
		margin-top: 100px;
		width: 800px;
	}
	
	.table {
		text-align: center;
	}
	
	.main_bot {
		border: 1px solid black;
		border-radius: 10px;
		padding: 15px;
		height: 400px;
	}
	
	.request_list_1st_tr {
		background: #ddd;
	}
	
	.request_list_td_resp {
		text-align: left;
	}
	
	.request_list_tr > .td:nth-of-type(2) {
		border-left: 1px solid #ddd;
		border-right: 1px solid #ddd;
	}
	
</style>
<jsp:include page="../template/header.jsp">
	<jsp:param value="인덱스" name="title" />
</jsp:include>

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