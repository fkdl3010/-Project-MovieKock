package com.koreait.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.command.request.RequestViewCommand;

@Controller

public class RequestPageController {
	
	@RequestMapping(value="requestWritePage.do")
	public String requestWritePage() {
		return "requestPage/requestWritePage";
	}
	@RequestMapping(value="requestListPage.do")
	public String requestListPage() {
		return "requestPage/requestListPage";
	}
	@RequestMapping(value="requestViewPage.do",method=RequestMethod.GET)
	public String requestViewPage(HttpServletRequest request, Model model, SqlSession sqlSession) {
		model.addAttribute("request", request);
		RequestViewCommand command = new RequestViewCommand();
		command.execute(sqlSession, model);
		
		return "request_page/request_view_page";
	}
}
