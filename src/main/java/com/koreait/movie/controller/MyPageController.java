package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MyPageController {

	@RequestMapping(value="myWritePage.do")
	public String myWritePage() {
		return "myPage/myWritePage";
	}
	
	@RequestMapping(value="myWriteViewPage.do")
	public String myWriteViewPage() {
		return "myPage/myWriteViewPage";
	}
	
	@RequestMapping(value="myPage.do")
	public String myPage() {
		return "myPage/myPage";
	}
}
