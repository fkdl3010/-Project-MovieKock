package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.FAQDto;

public interface RequestDao {

	// 문의하기
	
	public List<FAQDto> requestList(int beginRecord, int endRecord);
	
	public int totalRecord();
	
	public int requestWrite(String faq_title, String user_nickname, String faq_content, String faq_pw, int faq_no, int faq_select, int user_no);
	
	
	// 삽입 후 성공/실패 처리
	
	// public int requestWrite(String faq_content, String faq_title, int faq_select);
		
	// public FAQDto requestList(int faq_no);
	
	// 문의하기 목록
	
	// public FAQDto requestList(int user_no, int faq_select, String faq_title, String faq_content, Date faq_date, int faq_yn);
}
