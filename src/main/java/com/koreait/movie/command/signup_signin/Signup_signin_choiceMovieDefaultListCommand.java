package com.koreait.movie.command.signup_signin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.Signup_signin_dao;
import com.koreait.movie.dto.MovieDto;

public class Signup_signin_choiceMovieDefaultListCommand implements CommonVoidCommand{
	
	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Signup_signin_dao dao = sqlSession.getMapper(Signup_signin_dao.class);
		
		List<MovieDto> movieDefaultList = dao.signMovieDefaultList();
		
		model.addAttribute("movieDefaultList", movieDefaultList);
		
		
	}
}
