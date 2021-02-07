package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieInfoPageController {
	@RequestMapping(value="movieInfoPage.do")
	public String movieInfoPage() {
		return "movieInfoPage/movieInfoPage";
	}
	@RequestMapping(value="movieCommentPage.do")
	public String movieCommentPage() {
		return "movieInfoPage/movieCommentPage";
	}
	
}
