<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="/movie/assets/style/choicePage.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

</head>
<body>
  <div class="main-choice">
    <div class="main-choice-header">
      <span class="main-template-logo">
        <a href="mainPage.do"><i class="fas fa-video fa-4x"></i></a>
      </span>
    </div>

    <div class="progress-box">
      <h3 class="progress-text">10개 이상의 영화를 선택해 주새요.</h3>
      <progress id="progress-bar" value="0" max="10"></progress>
      <h3 class="progress-count">0/10</h3>
    </div>
    <div class="submit-box">
      <form class="submit-form">
        <input class="submit-btn"type="button" value="완료" disabled/>
      </form>
    </div>

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
    </div>

  </div>

  <script src="/movie/assets/script/choicePage.js"></script>
</body>
</html>