package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main_page_controller {

	
	@RequestMapping(value="main_page.do")
	public String mainPage() {
		return "main_page/main_page";
	}
	
	@RequestMapping(value="search_result_page.do")
	public String my_write_view_page() {
		return "main_page/search_result_page";
	}
	
}
