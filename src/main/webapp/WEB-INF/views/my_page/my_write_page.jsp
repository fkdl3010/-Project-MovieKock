<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<jsp:include page="../template/header.jsp">
	<jsp:param value="내가 쓴 글" name="title" />
</jsp:include>
<link rel="stylesheet" href="/movie/assets/style/my_page_css/my_write_page.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
 
<body>
   
   <div class="wrap">
		<div class="main">
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
								<a href="movie_info_page.do"><td>영화제목</td></a>
								<a href="movie_info_page.do"><td>제목</td></a>
								<a href="movie_info_page.do"><td>날짜</td></a>
							</tr>
						</thead>
					</table>    
                    </div>
                    <div class="box6">
                        <h3>내가 쓴 글</h3>
                    </div>
                </div>   		            
            </div>
		</div>
	</div>
    

<%@ include file="../template/footer.jsp" %>