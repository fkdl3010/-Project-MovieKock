package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {

	
	@RequestMapping(value="mainPage.do")
	public String mainPage() {
		return "mainPage/mainPage";
	}
	
	@RequestMapping(value="searchResultPage.do")
	public String myWriteViewPage() {
		return "mainPage/searchResultPage";
	}
	
}
