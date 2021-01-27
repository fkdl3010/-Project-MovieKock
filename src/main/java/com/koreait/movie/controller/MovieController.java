package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	
	@RequestMapping(value="/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="2nd.do")
	public String go2nd() {
		return "moviekock/2nd";
	}
	
	@RequestMapping(value="loginPage.do")
	public String goLoginPage()	{
		return "moviekock/loginPage";
	}
	
	@RequestMapping(value="myWritePage.do")
	public String goMyWritePage() {
		return "moviekock/myWritePage";
	}
	
}
