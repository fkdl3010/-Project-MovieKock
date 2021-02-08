package com.koreait.movie.command.request;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.RequestDao;

public class RequestWriteCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		RedirectAttributes rttr = (RedirectAttributes)map.get("rttr");
		
		String faq_content = request.getParameter("faq_content");
		String faq_title = request.getParameter("faq_title");
		String faq_pw = request.getParameter("faq_pw");
		
		int faq_select = Integer.parseInt("faq_select");
		int faq_no = Integer.parseInt("faq_select");
		int user_no = Integer.parseInt("faq_select");
		
		RequestDao requestDao = sqlSession.getMapper(RequestDao.class);
		
		int requestWriteResult = requestDao.requestWrite(faq_title, faq_content, faq_pw, faq_no, faq_select, user_no);
		
		rttr.addAttribute("a", requestWriteResult).addFlashAttribute("requestWriteResult", requestWriteResult);
		
		// insert 후에 이동되었음을 JSP에게 알려주겠습니다.
		rttr.addFlashAttribute("afterrequestWrite", true);
		
	}

}
