package com.koreait.movie.command.qna;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.QnaDao;

public class QnaDeleteCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		RedirectAttributes rttr = (RedirectAttributes)map.get("rttr");
						
		int qna_no = Integer.parseInt(request.getParameter("qna_no"));
		
	    QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
		int qnaDeleteResult = qnaDao.qnaDelete(qna_no);
		
		rttr.addFlashAttribute("qnaDeleteResult", qnaDeleteResult);
		
		// insert 후에 이동되었음을 JSP에게 알려주겠습니다.
		rttr.addFlashAttribute("afterqnaDelete", true);
		
	}
}
