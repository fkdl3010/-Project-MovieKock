package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Test {

	@RequestMapping(value="/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="my_write_page.do")
	public String my_write_page() {
		return "moviekock/my_write_page";
	}
	
	@RequestMapping(value="ask_page.do")
	public String ask_page() {
		return "moviekock/ask_page";
	}
	
}
