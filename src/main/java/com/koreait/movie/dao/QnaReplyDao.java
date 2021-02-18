package com.koreait.movie.dao;

import com.koreait.movie.dto.QnaDto;
import com.koreait.movie.dto.QnaReplyDto;

public interface QnaReplyDao {
	
	public int qnaReplyCount(int qna_no);
	
	public int qnaDelete(int qna_no);
	
	public QnaReplyDto qnaReply(QnaReplyDto qnaRepltDto);
	
	public QnaDto qnaReplyName(QnaDto user_nickname);
	
}
