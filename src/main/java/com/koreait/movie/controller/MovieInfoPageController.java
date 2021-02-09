package com.koreait.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.movie.command.movieInfo.MovieInfoViewCommand;

@Controller
public class MovieInfoPageController {
	
	@Autowired
	private SqlSession sqlSession;
	
	private MovieInfoViewCommand movieInfoViewCommand;
	
	@Autowired
	public void setBean(MovieInfoViewCommand movieInfoViewCommand) {
		this.movieInfoViewCommand = movieInfoViewCommand;
	}
	
	
	@RequestMapping(value="movieInfoPage.do")
	public String movieInfoPage(HttpServletRequest request, Model model) {
		
		model.addAttribute("request", request);
		movieInfoViewCommand.execute(sqlSession, model);
		return "movieInfoPage/movieInfoPage";
	}
	
	
	
	@RequestMapping(value="movieCommentPage.do")
	public String movieCommentPage() {
		return "movieInfoPage/movieCommentPage";
	}
	
}
