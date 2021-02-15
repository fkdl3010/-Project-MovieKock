package com.koreait.movie.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.movie.command.movieInfo.InitStarScoreCommand;
import com.koreait.movie.command.movieInfo.MovieInfoViewCommand;
import com.koreait.movie.command.movieInfo.StarSetCommand;

@Controller
public class MovieInfoPageController {
	
	@Autowired
	private SqlSession sqlSession;
	
	private MovieInfoViewCommand movieInfoViewCommand;
	private StarSetCommand starSetCommand;
	private InitStarScoreCommand initStarScoreCommand;
	
	@Autowired
	public void setBean(MovieInfoViewCommand movieInfoViewCommand,
						StarSetCommand starSetCommand,
						InitStarScoreCommand initStarScoreCommand) {
		this.movieInfoViewCommand = movieInfoViewCommand;
		this.starSetCommand = starSetCommand;
		this.initStarScoreCommand = initStarScoreCommand;
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
	
	@RequestMapping(value="setStar/{movieNo}/{rating}",
					method=RequestMethod.POST,
					produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> setStar(@PathVariable("movieNo") int movieNo,
										@PathVariable("rating") int rating,
										HttpServletRequest request,
										Model model) {
		model.addAttribute("movieNo", movieNo);
		model.addAttribute("rating", rating);
		model.addAttribute("request", request);
		
		return starSetCommand.execute(sqlSession, model);
	}
	
	
	@RequestMapping(value="initStarScore/{loginUser}/{movieNo}",
					method=RequestMethod.GET,
					produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> initStarScore(@PathVariable("loginUser") int userNo,
											@PathVariable("movieNo") int movieNo,
											HttpServletRequest request,
											Model model){
		model.addAttribute("userNo", userNo);
		model.addAttribute("movieNo", movieNo);
		
		return initStarScoreCommand.execute(sqlSession, model);
	}
	
}