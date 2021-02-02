package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main_page_controller {

	
	@RequestMapping(value="main_page.do")
	public String mainPage() {
		return "main_page/main_page";
	}
}
