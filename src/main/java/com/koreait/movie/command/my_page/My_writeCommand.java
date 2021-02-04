package com.koreait.movie.command.my_page;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.My_dao;

public class My_writeCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		My_dao my_dao = sqlSession.getMapper(My_dao.class);
		model.addAttribute("my_write", my_dao.my_write_page());
	}

}
