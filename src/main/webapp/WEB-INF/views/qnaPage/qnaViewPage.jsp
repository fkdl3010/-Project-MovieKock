<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../template/header.jsp">
	<jsp:param value="문의하기상세보기" name="title" />
</jsp:include>

<link rel="stylesheet" href="/movie/assets/style/qnaPageCss/qnaViewPage.css"/>
	<div class="wrap">
		<div class="main">
			<div class="main_body">
				<table class="tableUserWrite">
					<tr class="userWriteTr">
						<td class="userWriteTd">내용</td>
						<td class="userWriteTd">문의 날짜</td>
						<td class="userWriteTd">답변 여부</td>
					</tr>
					<tr class="userWriteTrResp">
						<td class="userWriteTdResp">${qnaDto.qna_content}</td>
						<td class="userWriteTdResp">${qnaDto.qna_date}</td>
						<td class="userWriteTdResp">${qnaDto.qna_yn}</td>
					</tr>
				</table>
				<table class="tableAdminWrite">
					<tr class="adminWriteTr">
						<td class="adminWriteTd">답변 내용</td>
						<td class="adminWriteTd">답변 날짜</td>
						<td class="adminWriteTd">답변 여부</td>
					</tr>
					<c:if test="${qnaReplyCount eq 0}">
					<tr class="adminWriteTrResp">
						<td class="adminWriteTdResp">${qnaDto.qna_content}</td>
						<td class="adminWriteTdResp">${qnaDto.qna_date}</td>
						<td class="adminWriteTdResp">답변 대기중</td>
					</tr>
					</c:if>
					<c:if test="${qnaReplyCount gt 1}">
					<tr class="adminWriteTrResp">
						<td class="adminWriteTdResp">${qnaDto.qna_content}</td>
						<td class="adminWriteTdResp">${qnaDto.qna_date}</td>
						<td class="adminWriteTdResp">답변 완료</td>
					</tr>
					</c:if>
				</table>
				<form method="post">
					<input type="button" class="deleteBtn" value="삭제"  onclick="fn_qnaDelete(this.form)" />
					<input type="hidden" name="qna_no" value="${qnaDto.qna_no}" />
				</form>
				<form method="get">
					<input type="button" class="listBtn" value="목록" onclick="fn_qnaListView(this.form)" />	
				</form>
				<form method="get">
					<c:if test="${qnaDto.user_nickname eq 'admin'}">
						<input type="button" class="adiminWrite" value="답변하기" onclick="fn_qnaAdminWrite(this.form)" />
					</c:if>
				</form>
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