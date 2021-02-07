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
	

	@RequestMapping(value="recommand_page.do")
	public String recommand_page() {
		return "recommand_page/recommand_page";
	}
	
	@RequestMapping(value="recommand_random_page.do")
	public String recommand_randon_page(Model model) {
		randomMovieCommand.execute(sqlSession, model);
		return "recommand_page/recommand_random_page";
	}
	
	@RequestMapping(value="recommandSituPage.do")
					//method=RequestMethod.POST)
	public String recommandSituPage(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		situMovieCommand.execute(sqlSession, model);
		return "recommand_page/recommandSituPage";
	}
	
	@RequestMapping(value="category_recommand_page.do")
	public String category_recommand_page() {
		return "recommand_page/category_recommand_page";
	}
}
