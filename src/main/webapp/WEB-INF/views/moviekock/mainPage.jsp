<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../template/header.jsp">
	<jsp:param value="메인페이지" name="title" />
</jsp:include>

<link rel="stylesheet" href="/movie/assets/style/mainPage.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">

<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<div class="wrap">

	<div class="main">

		<div class="ListContainer">
			<div id="redLine" class="leftScroll">
				<div class="prevBtn"></div>
			</div>
			<div class=" listTitle">박스오피스</div>
			<div class="outerContainer">
				<div class="movie" img scr="">
					<div class="rankBadge">1</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">1</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">2</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">3</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">4</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">5</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">6</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">7</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">8</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">9</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				<div class="movie" img scr="">
					<div class="rankBadge">10</div>
					<div class="info">
						<div class="text">
							<h3>제목</h3>
							<p>내용 &nbsp; 배우 &nbsp; 평점</p>
						</div>
					</div>
				</div>
				

				<div class="rightScroll">
					<div class="nextBtn"">
						<img
							src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDEyIDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMEgxMlYxNkgweiIvPgogICAgICAgIDxwYXRoIGZpbGw9IiMyOTJBMzIiIHN0cm9rZT0iIzI5MkEzMiIgc3Ryb2tlLXdpZHRoPSIuMzUiIGQ9Ik0zLjQyOSAxMy40MDlMNC4zNTQgMTQuMjU4IDEwLjY4IDguNDYgMTEuMTQzIDguMDM2IDQuMzU0IDEuODEzIDMuNDI5IDIuNjYyIDkuMjkxIDguMDM2eiIvPgogICAgPC9nPgo8L3N2Zz4K">
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		var swiper = new Swiper('.innerContainer', {
			slidesPerView : 6,
			spaceBetween : 30,
			slidesPerGroup : 6,
			loop : true,
			navigation : {
				nextEl : '.nextBtn',
				prevEl : '.prevBtn',
			},
		});
	</script>

	</body>
	</html>