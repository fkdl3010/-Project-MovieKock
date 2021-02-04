package com.koreait.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.command.my_page.Movie_info_pageCommand;
import com.koreait.movie.command.my_page.My_write_viewCommand;

public class My_write_controller {
	
	@RequestMapping(value="my_write_view_page.do", method=RequestMethod.GET)
	public String my_write_view(HttpServletRequest request, Model model, SqlSession sqlSession) {
	    model.addAttribute("request", request);
	    My_write_viewCommand command = new My_write_viewCommand();
	    command.execute(sqlSession, model);
	    return "my_page/my_write_view.page";   
	}
	
	@RequestMapping(value="movie_info_page.do", method=RequestMethod.GET)
	public String movie_info(HttpServletRequest request, Model model, SqlSession sqlSession) {
	    model.addAttribute("request", request);
	    Movie_info_pageCommand command = new Movie_info_pageCommand();
	    command.execute(sqlSession, model);
	    return "my_page/movie_info_page";   
	}
	
	

}
