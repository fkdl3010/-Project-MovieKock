<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="로그인 페이지" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/myWritePage.css"/>
 
	<div class="wrap">
		<div class="box1">커버사진
			<div class="box2">
			<div id= "porfile" class="profile">
				<img alt="프로필사진" src="assets/images/face.png" width="190%" />
			</div>
				<div class="box3">
					<div class="box4">내가 쓴 글</div>				
					<table>
						<thead>
							<tr>
								<td>NO.</td>
								<td>TITLE</td>
								<td>VALUE</td>
							</tr>
						</thead>
					</table>
						<input type="button" id="btn" class="btn" value="더 보기" onclick="" />
				</div>
			</div>
		</div>
	</div>

<%@ include file="../template/footer.jsp" %>