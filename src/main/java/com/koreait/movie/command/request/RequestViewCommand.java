package com.koreait.movie.command.request;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.RequestDao;

public class RequestViewCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int no = Integer.parseInt(request.getParameter("user_no"));
		
		RequestDao requestDao = sqlSession.getMapper(RequestDao.class);
		
		model.addAttribute("requestDto", requestDao.requestView(no));
		model.addAttribute("page", request.getParameter("page"));
		
		
	}

}
