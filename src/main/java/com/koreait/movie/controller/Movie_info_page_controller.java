package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Movie_info_page_controller {
	@RequestMapping(value="movie_info_page.do")
	public String movie_info_page() {
		return "movie_info_page/movie_info_page";
	}
	@RequestMapping(value="movie_comment_page.do")
	public String movie_comment_page() {
		return "movie_info_page/movie_comment_page";
	}
	
	@RequestMapping(value="")
	public String moive_info_page() {
		return "movie_info_page/movie_info_page";
	}
	
}
