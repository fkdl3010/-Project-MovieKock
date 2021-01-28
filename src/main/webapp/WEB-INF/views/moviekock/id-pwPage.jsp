<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>계정 찾</title>
  <link rel="stylesheet" href="id-pwPage.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
</head>
<body>

  <div class="id-pw-main-wrapper">

    <div class="logo-wrapper">
      <div class="logo-px">
        <i class="fas fa-video fa-5x"></i>
      </div>
    </div>

    <div class="contents-wrapper">
      <div class="contents-header">
        아이디, 비밀번호 찾기
      </div>

      <div class="id-pw-form-box">

        <div class="id-section">
          <div class="id-section-header section-header">
            아이디 찾기
          </div>
          <div class="id-form-control-box section-form">
            <form action="#" class="id-form">
              <input type="text" class="input-id inputs"placeholder="이름을 입력해 주세요."/>
              <input type="text" class="input-id-email inputs"placeholder="이메일을 입력해 주세요."/>

              <button class="id-btn btns">아이디 찾기</button>
            </form>
          </div>
          <div>

          </div>
        </div>

        <div class="pw-section">
          <div class="pw-section-header section-header">
            비밀번호 찾기
          </div>
          <div class="pw-form-control-box section-form">
            <form action="#" class="pw-form">
              <input type="text" class="input-pw-name inputs"placeholder="이름을 입력해 주세요."/>
              <input type="text" class="input-pw-email inputs"placeholder="이메일을 입력해 주세요."/>
              <input type="text" class="input-pw-id inputs"placeholder="아이디를 입력해 주세요."/>
              <button class="pw-btn btns">비밀번호 찾기</button>

            </form>
          </div>
          <div>

          </div>
        </div>

      </div>

    </div>


  </div>

<%@ include file="../template/footer.jsp" %>