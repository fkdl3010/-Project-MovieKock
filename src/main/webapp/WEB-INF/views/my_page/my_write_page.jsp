<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="내가 쓴 글" name="title" />
</jsp:include>
<link rel="stylesheet"
	href="/movie/assets/style/my_page_css/my_write_page.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

<body>

	<div class="wrap">
		<div class="main">
		<!-- 
			<div class="box1">
				<div class="box3">
					<i class="fas fa-user-alt fa-8x" id=user_icon></i>
				</div>
			</div>
			<div class="box2">
				<div class="box4">
					<input type="button" id="btn" class="btn" value="더 보기" onclick="" />
					<div class="box5">
						<table>
							<thead>
								<tr>
									<td>영화제목</td>
									<td>제목</td>
									<td>날짜</td>
								</tr>
								<tr>
									<td>영화제목</td>
									<td>제목</td>
									<td>날짜</td>
								</tr>
								<tr>
									<td>영화제목</td>
									<td>제목</td>
									<td>날짜</td>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty list}">
									<tr>
										<td>없음</td>
									</tr>
								</c:if>
								<c:if test="${not empty list}">
									<c:forEach var="commentDto" items="${commentDto}">
										<tr>
											<td><a href="movie_info_page.do?no=${commentDto.user_no}">${commentDto.movie_no}</a></td>
											<td><a href="my_write_view_page.do?no=${commentDto.user_no}">${commentDto.contents_title}</a></td>
											<td>${commentDto.comment_date}</td>
										</tr>z
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
					<div class="box6">
						<h3>내가 쓴 글</h3>
					</div>
				</div>
			 </div>
			-->
			
			<section>
				<div class="box_top"></div>
				<div class="box_bottom"></div>
			</section>
		</div>
	</div>


	<%@ include file="../template/footer.jsp"%>