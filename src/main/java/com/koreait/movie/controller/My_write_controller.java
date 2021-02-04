package com.koreait.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.movie.command.my_page.My_write_viewCommand;

public class My_write_controller {
	
	@RequestMapping(value="my_write_page.do", method=RequestMethod.GET)
	public String view(HttpServletRequest request, Model model, SqlSession sqlSession) {
	    model.addAttribute("request", request);
	    My_write_viewCommand command = new My_write_viewCommand();
	    command.execute(sqlSession, model);
	    return "my_page/my_write_view";   
	}

}
