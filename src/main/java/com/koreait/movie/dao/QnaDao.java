package com.koreait.movie.dao;

import java.sql.Date;
import java.util.List;

import com.koreait.movie.dto.QnaDto;

public interface QnaDao {
	
	// 리스트
	public List<QnaDto> qnaList(int beginRecord, int endRecord);
	
	public int qnaWrite(QnaDto qnaDto);
	
	public int totalRecord();
	
	// 뷰
	public QnaDto qnaView(int qna_no);
	
	// 유저닉네임
	public String userNickname(int user_no);

	// 상세보기
	public int qnaView(String qna_content, Date date, int yn);
	
	// 게시글 비밀번호 
	public String qnaPw(String qna_pw);

		
}