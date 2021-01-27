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
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${title }</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
  <link rel="stylesheet" href="/movie/assets/style/header.css"/>
</head>
<body>
  <div class="main-template-header">
    <span class="menu-template-bar">
      <i class="fas fa-bars fa-3x"></i>
    </span>
    <span class="main-template-logo">
      <i class="fas fa-video fa-4x"></i>
    </span>
    <div class="login-search-box">
      <form class="search-form">
        <input type="text" class="input-search"placeholder="검색어를 입력해 주세요."/>
        <span class="btn">
          <button class="search-btn"><i class="fas fa-search"></i></button>
        </span>
      </form>
      <span class="user-btn">
        <i class="fas fa-user-circle fa-3x"></i>
      </span>
    </div>

  </div>
