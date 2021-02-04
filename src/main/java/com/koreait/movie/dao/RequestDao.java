package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.FAQDto;

public interface RequestDao {

	public List<FAQDto> faqList(int beginRecord, int endRecord);
	
	public int totalRecord();
	
}
