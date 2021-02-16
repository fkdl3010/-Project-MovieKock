package com.koreait.movie.command.qna;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.QnaReplyDao;
import com.koreait.movie.dto.QnaReplyDto;

public class QnaReplyCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		RedirectAttributes rttr = (RedirectAttributes)map.get("rttr");
		
		String qna_reply_content = request.getParameter("qna_reply_content");
		
		HttpSession session = request.getSession();
		QnaReplyDto qnaReply = (QnaReplyDto)session.getAttribute("qnaReply");
		
		QnaReplyDto qnaReplyDto = new QnaReplyDto();
		qnaReplyDto.setQna_reply_content(qna_reply_content);
		
		
	    QnaReplyDao qnaReplyDao = sqlSession.getMapper(QnaReplyDao.class);
	    QnaReplyDto qnaReplyResult = qnaReplyDao.qnaReply(qnaReplyDto);
		
		rttr.addFlashAttribute("qnaReplyResult", qnaReplyResult);
		
		// insert 후에 이동되었음을 JSP에게 알려주겠습니다.
		rttr.addFlashAttribute("afterqnaReply", true);
		
		
	}

}