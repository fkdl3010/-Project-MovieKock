package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ask_controller {
	
	@RequestMapping(value="ask_page.do")
	public String ask_page() {
		return "moviekock/ask_page";
	}

}
