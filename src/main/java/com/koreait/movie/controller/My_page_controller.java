package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller

public class My_page_controller {

	@RequestMapping(value="my_write_page.do")
	public String my_write_page() {
		return "my_page/my_write_page";
	}
	
	@RequestMapping(value="my_write_view_page.do")
	public String my_write_view_page() {
		return "my_page/my_write_view_page";
	}
	
	@RequestMapping(value="my_page.do")
	public String my_page() {
		return "my_page/my_page";
	}
	
}
