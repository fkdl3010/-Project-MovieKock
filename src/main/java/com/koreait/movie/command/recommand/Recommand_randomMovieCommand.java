package com.koreait.movie.command.recommand;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.Recommand_dao;


public class Recommand_randomMovieCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Recommand_dao dao = sqlSession.getMapper(Recommand_dao.class);
		
		
		Integer movieCount = dao.movieCount();
		
		int no = (int)(Math.random() * movieCount) +1;
		
	
		String movieTitle = dao.movieTitle(no);
		
		
		model.addAttribute("movieTitle",movieTitle);
		model.addAttribute("movieCount",movieCount);
		model.addAttribute("no",no);
		
		
		
	}

}
