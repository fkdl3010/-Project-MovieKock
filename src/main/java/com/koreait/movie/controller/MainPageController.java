package com.koreait.movie.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.movie.command.main.MainCommand;

@Controller
public class MainPageController {

	/*
	 * @RequestMapping(value = "searchResultPage.do") public String
	 * myWriteViewPage() { return "mainPage/searchResultPage"; }
	 */
	@Autowired
	private SqlSession sqlSession;

	private MainCommand mainCommand;
	/* private SearchResultCommand searchResultCommand; */

	@Autowired
	public void setBean(MainCommand mainCommand) {
		this.mainCommand = mainCommand;
	}

	@RequestMapping(value = "mainPage.do")
	public String mainPage(Model model) {
		mainCommand.execute(sqlSession, model);

		return "mainPage/mainPage";
	}

}
