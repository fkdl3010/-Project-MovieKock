package com.koreait.movie.command.signup_signin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.Signup_signin_dao;
import com.koreait.movie.dto.UserDto;

public class Signup_signin_loginCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		
		UserDto userDto = new UserDto();
		
		userDto.setUser_id(user_id);
		userDto.setUser_pw(user_pw);

		Signup_signin_dao dao = sqlSession.getMapper(Signup_signin_dao.class);
		
		UserDto loginUser = dao.loginUser(userDto);
		
		HttpSession session = request.getSession();
		
		if(loginUser == null) {
			model.addAttribute("loginResult", false);
		} else {
			model.addAttribute("loginResult", true);
			model.addAttribute("loginUser", loginUser);
//			session.setAttribute("loginUser", loginUser);
		}
	}

}
