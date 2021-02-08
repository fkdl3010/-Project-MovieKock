package com.koreait.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.command.recommand.RecommandSituMovieCommand;
import com.koreait.movie.command.recommand.RecommandRandomMovieCommand;

@Controller

public class RecommandPageController {
	
	@Autowired
	private SqlSession sqlSession;
	
	private RecommandRandomMovieCommand randomMovieCommand;
	private RecommandSituMovieCommand situMovieCommand;
	
	@Autowired
	public void setBean(RecommandRandomMovieCommand randomMovieCommand, RecommandSituMovieCommand situMovieCommand) {
		this.randomMovieCommand = randomMovieCommand;
		this.situMovieCommand = situMovieCommand;
	}
	

	@RequestMapping(value="recommandPage.do")
	public String recommand_page() {
		return "recommandPage/recommandPage";
	}
	
	@RequestMapping(value="recommandRandomPage.do")
	public String recommand_randon_page(Model model) {
		randomMovieCommand.execute(sqlSession, model);
		return "recommandPage/recommand_random_page";
	}
	
	@RequestMapping(value="recommandSituPage.do")
					//method=RequestMethod.POST)
	public String recommandSituPage(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		situMovieCommand.execute(sqlSession, model);
		return "recommandPage/recommandSituPage";
	}
	
	@RequestMapping(value="categoryRecommandPage.do")
	public String category_recommand_page() {
		return "recommandPage/categoryRecommandPage";
	}
}
