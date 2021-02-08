<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="검색결과" name="title" />
</jsp:include>

<link rel="stylesheet"
	href="/movie/assets/style/mainPageCss/searchResultPage.css" />

<div class="wrap">
	<div class="main">
		<c:forEach var="movieDto" items="${resultList}">
			<p class="title">${search}에대한검색내용입니다.</p>
			<div class="main-movieList">
				<div class="list">
					<img src="/movie/assets/images/poster/${movieDto.movie_title}_포스터.jpg" />
				</div>
			</div>
			<div class="info">
				<div class="text">
					<div class="content">
						<h4>${movieDto.movie_title}</h4>
						장르<br /> 평점<br /> ${movieDto.movie_nation}<br />
						${movieDto.movie_director}<br /> ${movieDto.movie_audience}<br />
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<%-- 

		<c:if test="${empty list}">
				검색된 영화가 없습니다.
			</c:if>
		<c:if test="${not empty list}">
			<c:forEach var="movieDto" items="${search}">
				<div class="content">
					<h4>${movieDto.movie_title}</h4>
					${empDto.movie_director}
					${empDto.movie_audience}
					${empDto.movie_opening_date}
					${empDto.movie_nation}
					${empDto.movie_genre}
					${empDto.star_score}
				
			</c:forEach>
		</c:if> --%>
<%@ include file="../template/footer.jsp"%>