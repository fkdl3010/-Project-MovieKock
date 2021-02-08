<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="메인페이지" name="title" />
</jsp:include>

<link rel="stylesheet" href="/movie/assets/style/mainPageCss/mainPage.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css%22%3E" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css%22%3E" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js%22%3E"></script>

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>

/*
	$(document).ready(function(){
		
		$(".rankBadge").on("click",function(){
				location.href="movieInfoPage.do"
		});
	});
  */

</script>
<div class="wrap">
	<div class="main">
		<div class="swiper-container s1">
			<h3>박스오피스</h3>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="rankBadge" onclick="location.href='movieInfoPage.do';" >1</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">2</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">3</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">4</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">5</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">6</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">7</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">8</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">9</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">10</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">11</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">12</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="swiper-button-next n1"></div>
		<div class="swiper-button-prev p1"></div>
	</div>

	<div class="main">
		<div class="swiper-container s2">
			<h3>박스오피스</h3>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="rankBadge">1</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">2</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">3</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">4</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">5</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">6</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">7</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">8</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">9</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">10</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">11</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">12</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="swiper-button-next n2"></div>
		<div class="swiper-button-prev n2"></div>
	</div>

	<div class="main">
		<div class="swiper-container s3">
			<h3>박스오피스</h3>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="rankBadge">1</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>

				</div>
				<div class="swiper-slide">
					<div class="rankBadge">2</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">3</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">4</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">5</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">6</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">7</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">8</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">9</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">10</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">11</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="rankBadge">12</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="swiper-button-next n3"></div>
		<div class="swiper-button-prev p3"></div>
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