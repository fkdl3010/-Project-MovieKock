package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class RecommandPageController {

	@RequestMapping(value="recommandPage.do")
	public String recommandPage() {
		return "recommandPage/recommandPage";
	}
	
	@RequestMapping(value="categoryRecommandPage.do")
	public String categoryRecommandPage() {
		return "recommandPage/categoryRecommandPage";
	}
}
