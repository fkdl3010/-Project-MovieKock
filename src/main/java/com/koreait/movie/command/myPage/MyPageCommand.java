package com.koreait.movie.command.myPage;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.common.Sha256;
import com.koreait.movie.dto.UserDto;

public class MyPageCommand implements CommonVoidCommand {
	
	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		HttpSession session = request.getSession();

		UserDto loginUser = (UserDto)session.getAttribute("loginUser");
		model.addAttribute("loginUser", loginUser);
	
		
	}
}
