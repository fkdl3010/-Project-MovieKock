package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.FAQDto;

public interface RequestDao {

	// 문의하기
	
	public List<FAQDto> requestList(int beginRecord, int endRecord);
	
	public int requestWrite(FAQDto faqdto);
	
	public int totalRecord();
	
	public int requestWrite1(int faq_select, String faq_title, String faq_content, int user_no);
	public int requestWrite2(int faq_select, String faq_title, int faq_secret, String faq_pw, String faq_content, int user_no);
	
	public FAQDto requestView(int no);
	
	// 삽입 후 성공/실패 처리
	
	// public int requestWrite(String faq_content, String faq_title, int faq_select);
		
	// public FAQDto requestList(int faq_no);
	
	// 문의하기 목록
	
	// public FAQDto requestList(int user_no, int faq_select, String faq_title, String faq_content, Date faq_date, int faq_yn);
}
