package com.koreait.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.command.move.MoveCommand;

public class MoveController {
	@Autowired
	private SqlSession sqlSession;
	
	private MoveCommand moveCommand;

	
	@Autowired
	public void setBean(
				MoveCommand moveCommand
			) {
		this.moveCommand = moveCommand;
	}

	@RequestMapping(value="movieInfoPage.do",method=RequestMethod.POST)
	public String moveMovieInfoPage(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		moveCommand.execute(sqlSession, model);
		return "movieInfopage/movieInfoPage";
	}
	
	
	
	
}
