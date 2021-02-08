<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	if (title == null || title.isEmpty()) {
		title = "movieKock";
	}
	pageContext.setAttribute("title", title);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${title }</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet" href="/movie/assets/style/common.css" />
</head>
<body>
	<div class="top-wrap">

		<div class="main-template-header animated fadeInDown">
			<span class="main-template-logo"> <i
				class="fas fa-video fa-4x"></i>
			</span>
			<div class="main-header-link-box">
				<span class="ranking-link"> <a href="#"
					class="ranking-link-a"> 순위 추천 </a>
				</span> <span class="recommend-link"> <a href="#"
					class="recommend-link-a"> 추천 받기 </a>
				</span> <span class="category-link"> <a href="request_list_page.do"
					class="category-link-a"> 장르별 </a>
				</span> <span class="faq-link"> <a href="request_list_page.do"
					class="faq-link-a"> 문의 하기 </a>
				</span>
			</div>
			<div class="login-search-box">
				<form class="search-form" name="search" method="get" action="searchResultPage.do">
					<input type="text" class="input-search" name="searchKeyword" placeholder="검색어를 입력해 주세요." />
					<span class="btn-a">
						<button class="search-btn" onclick="fn_search(this.form)">
							<i class="fas fa-search"></i>
						</button>
					</span>
				</form>
				<span class="user-btn"> <i class="fas fa-user-circle fa-3x"></i>
				</span>
			</div>
		</div>
	</div>
	<script>

		function fn_search(f) {
			f.action = "searchResultPage.do?search=" + search;
			f.submit();
		}
	</script>