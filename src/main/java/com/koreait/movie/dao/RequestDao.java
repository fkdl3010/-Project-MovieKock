package com.koreait.movie.dao;

import java.sql.Date;
import java.util.List;

import com.koreait.movie.dto.FAQDto;

public interface RequestDao {

	// 문의하기
	
	public String requestWrite(String faq_title, String faq_content);
	
	public int requestWrite(int faq_select);
	
	// 삽입 후 성공/실패 처리
	
	public int requestWrite(String faq_content, String faq_title, int faq_select);
		
	public FAQDto requestList(int faq_no);
	
	// 문의하기 목록
	
	// public FAQDto requestList(int user_no, int faq_select, String faq_title, String faq_content, Date faq_date, int faq_yn);
}
