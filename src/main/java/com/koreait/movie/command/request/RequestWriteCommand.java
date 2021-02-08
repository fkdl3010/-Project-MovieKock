package com.koreait.movie.command.request;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.RequestDao;
import com.koreait.movie.dto.FAQDto;
import com.koreait.movie.dto.UserDto;

public class RequestWriteCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		RedirectAttributes rttr = (RedirectAttributes)map.get("rttr");
		
		int faq_select = Integer.parseInt(request.getParameter("faq_select"));
		String faq_title = request.getParameter("faq_title");
		String faq_content = request.getParameter("faq_content");
		int faq_secret = Integer.parseInt(request.getParameter("faq_secret"));
		String faq_pw = request.getParameter("faq_pw");
		
		/*
		HttpSession session = request.getSession();
		UserDto userDto = (UserDto)session.getAttribute("loginDto");
		int user_no = userDto.getUser_no();
		*/
		
		FAQDto faqdto = new FAQDto();
	    faqdto.setFaq_select(faq_select);
	    faqdto.setFaq_title(faq_title);
	    faqdto.setFaq_content(faq_content);
	    faqdto.setFaq_secret(faq_secret);
	    faqdto.setFaq_pw(faq_pw);
		
		int user_no = 1;
		
		RequestDao requestDao = sqlSession.getMapper(RequestDao.class);
		requestDao.requestWrite1(faq_select, faq_title, faq_content, user_no);
		requestDao.requestWrite2(faq_select, faq_title, faq_secret, faq_pw, faq_content, user_no);
		
		int requestWriteResult = 0;
		if (faq_pw == null || faq_pw.isEmpty()) {
			requestWriteResult = requestDao.requestWrite1(faq_select, faq_title, faq_content, user_no);
		} else {
			requestWriteResult = requestDao.requestWrite2(faq_select, faq_title, faq_secret, faq_pw, faq_content, user_no);
		}
		
		rttr.addAttribute("a", requestWriteResult).addFlashAttribute("requestWriteResult", requestWriteResult);
		
		// insert 후에 이동되었음을 JSP에게 알려주겠습니다.
		rttr.addFlashAttribute("afterrequestWrite", true);
		
	}

}
