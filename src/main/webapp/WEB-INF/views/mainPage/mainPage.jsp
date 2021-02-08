<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="메인페이지" name="title" />
</jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/movie/assets/style/mainPageCss/mainPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css%22%3E" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css%22%3E" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js%22%3E"></script>

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<div class="wrap">
	<div class="main">
		<div class="swiper-container s1">
			<h3>박스오피스</h3>
			<div class="swiper-wrapper">
				<c:forEach var="movieDto" items="${mainList1}">
					<div class="swiper-slide">
						<div>
							<div class="rankBadge">${movieDto.movie_no}</div>
							<img
								src="/movie/assets/images/poster/${movieDto.movie_title}_포스터.jpg">
						</div>
						<div class="info">
							<div class="text">
								<h4>${movieDto.movie_title}</h4>
								<p>${movieDto.movie_nation}&nbsp;&nbsp;
									평점<br /> 장르
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="swiper-button-next n1"></div>
		<div class="swiper-button-prev p1"></div>
	</div>
	<div class="main">
		<div class="swiper-container s2">
			<h3>관객수</h3>
			<div class="swiper-wrapper">
				<c:forEach var="movieDto" items="${mainList2}">
					<div class="swiper-slide">
						<div>
							<div class="rankBadge">${movieDto.movie_no}</div>
							<img src="/movie/assets/images/poster/${movieDto.movie_title}_포스터.jpg">
						</div>
						<div class="info">
							<div class="text">
								<h4>${movieDto.movie_title}</h4>
								<p>${movieDto.movie_nation}&nbsp;&nbsp; 평점<br /> 장르
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="swiper-button-next n2"></div>
		<div class="swiper-button-prev p2"></div>
	</div>
	<div class="main">
		<div class="swiper-container s3">
			<h3>한국영화</h3>
			<div class="swiper-wrapper">
				<c:forEach var="movieDto" items="${mainList1}">
					<div class="swiper-slide">
						<div>
							<div class="rankBadge">${movieDto.movie_no}</div>
							<img src="/movie/assets/images/poster/${movieDto.movie_title}_포스터.jpg">
						</div>
						<div class="info">
							<div class="text">
								<h4>${movieDto.movie_title}</h4>
								<p>${movieDto.movie_nation}&nbsp;&nbsp; 평점<br /> 장르
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="swiper-button-next n3"></div>
		<div class="swiper-button-prev p3"></div>
	</div>
</div>
<script src="../dist/js/swiper.min.js"></script>
<script>
	new Swiper('.s1', {
		slidesPerView : 6,
		spaceBetween : 20,
		slidesPerGroup : 6,
		loop : true,
		loopFillGroupWithBlank : false,
		navigation : {
			nextEl : '.n1',
			prevEl : '.p1',
		},
	});
	new Swiper('.s2', {
		slidesPerView : 6,
		spaceBetween : 20,
		slidesPerGroup : 6,
		loop : true,
		loopFillGroupWithBlank : false,
		navigation : {
			nextEl : '.n2',
			prevEl : '.p2',
		},
	});
	new Swiper('.s3', {
		slidesPerView : 6,
		spaceBetween : 20,
		slidesPerGroup : 6,
		loop : true,
		loopFillGroupWithBlank : false,
		navigation : {
			nextEl : '.n3',
			prevEl : '.p3',
		},
	});
</script>

<%@ include file="../template/footer.jsp"%>