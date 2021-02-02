package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class Recommand_page_controller {

	@RequestMapping(value="recommand_page.do")
	public String recommand_page() {
		return "recommand_page/recommand_page";
	}
	
	@RequestMapping(value="category_recommand_page.do")
	public String category_recommand_page() {
		return "recommand_page/category_recommand_page";
	}
}
