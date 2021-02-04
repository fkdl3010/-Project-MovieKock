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
	@RequestMapping(value="requestViewPage.do")
	public String requestViewPage() {
		return "requestPage/requestViewPage";
	}
}
