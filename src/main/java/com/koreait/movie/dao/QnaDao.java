package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.QnaDto;

public interface QnaDao {

	public List<QnaDto> qnaList(int beginRecord, int endRecord);
	
	public int qnaWrite(QnaDto faqDto);
	
	public int totalRecord();
	
	public String userNickname(int user_no);
	
	public QnaDto qnaView(int no);
	
}
