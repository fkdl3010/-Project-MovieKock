package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String request_view_page(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		Request_viewCommand command = new Request_viewCommand();
		command.execute(sqlSession, model);
		
		return "request_page/request_view_page";
	}
}
