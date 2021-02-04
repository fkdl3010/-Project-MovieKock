package com.koreait.movie.command.myPage;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;

public class MyWriteCommand implements CommonMapCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Mydao my_dao = sqlSession.getMapper(Mydao.class);
		model.addAttribute("my_write", my_dao.my_write_page());
	}

}
