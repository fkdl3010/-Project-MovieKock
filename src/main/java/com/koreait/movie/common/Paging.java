package com.koreait.movie.common;

public class Paging {

	
	public static String getPaging(String path, int totalRecord, int recordPerPage, int page) {
		
		int totalPage;	// 전체 페이지의 개수
		totalPage = totalRecord / recordPerPage;
		if (totalRecord % recordPerPage != 0) {
			totalPage++;
		}
		totalPage = (totalPage >= page) ? totalPage : page;
		
		
		// 페이지 5개를 한 블록에 배치
		int pagePerBlock = 5;	// 한 블록당 페이지 5개
		
		int beginPage = 0;		// 한 블록에 표시되는 시작 페이지의 번호
		int endPage = 0;		// 한 블록에 표시되는 종료 페이지의 번호
		beginPage = ((page - 1) / pagePerBlock) * pagePerBlock + 1;
		endPage = beginPage + pagePerBlock - 1;
		endPage = endPage < totalPage ? endPage : totalPage;

		
		return null;
	}
	
}
