package com.koreait.movie.command.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.dao.AdminDao;
import com.koreait.movie.dao.QnaDao;
import com.koreait.movie.dao.QnaReplyDao;
import com.koreait.movie.dto.QnaDto;
import com.koreait.movie.dto.QnaReplyDto;

public class AdminQnaViewCommand implements CommonMapCommand{
	
	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int qna_no = Integer.parseInt(request.getParameter("qna_no"));
		String qna_reply_content = request.getParameter("qna_reply_content");
		
		
		QnaReplyDao qnaReplyDao = sqlSession.getMapper(QnaReplyDao.class);
	    
		QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		
		AdminDao adminDao = sqlSession.getMapper(AdminDao.class);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		QnaDto qnaDto = qnaDao.qnaView(qna_no);
		if (qnaDto != null) {
			resultMap.put("qnaDto", qnaDto);
			resultMap.put("viewResult", true);
		} else {
			resultMap.put("viewResult", false);
		}
		
		
		QnaReplyDto qnaReplyDto = qnaReplyDao.qnaReplyView(qna_no);
		if (qnaDto != null) {
			resultMap.put("qnaDto", qnaDto);
			resultMap.put("viewResult", true);
		} else {
			resultMap.put("viewResult", false);
		}
		
		return resultMap;
		
	}
}
	

