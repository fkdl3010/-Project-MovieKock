<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="검색결과" name="title" />
</jsp:include>

<link rel="stylesheet"
	href="/movie/assets/style/mainPageCss/searchResultPage.css" />

<div class="wrap">
	<div class="main">
		<p class="title">###님이 보고싶은 영화입니다.</p>
		<div class="main-movieList">
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
			<div class="list"></div>
		</div>
	</div>
</div>
<%@ include file="../template/footer.jsp"%>