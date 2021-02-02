package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class Request_page_controller {
	
	@RequestMapping(value="request_write_page.do")
	public String request_write_page() {
		return "request_page/request_write_page";
	}
	@RequestMapping(value="request_list_page.do")
	public String request_list_page() {
		return "request_page/request_list_page";
	}
	@RequestMapping(value="request_view_page.do")
	public String request_view_page() {
		return "request_page/request_view_page";
	}
}
