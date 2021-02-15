package com.koreait.movie.dao;

import com.koreait.movie.dto.QnaReplyDto;

public interface QnaReplyDao {
	
	public int qnaReplyCount(int qna_no);
	
	public int qnaDelete(int qna_no);
	
	public QnaReplyDto qnaReply(QnaReplyDto qna_reply_content);
	
}
