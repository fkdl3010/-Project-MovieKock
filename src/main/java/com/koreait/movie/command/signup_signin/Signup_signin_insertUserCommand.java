package com.koreait.movie.command.signup_signin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.common.Sha256;
import com.koreait.movie.dao.Signup_signin_dao;
import com.koreait.movie.dto.UserDto;

public class Signup_signin_insertUserCommand implements CommonVoidCommand{
	
	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		RedirectAttributes rttr = (RedirectAttributes)map.get("rttr");
		
		String user_id = request.getParameter("id");
		String user_pw = Sha256.sha256(request.getParameter("pw"));
		String user_nickname = request.getParameter("nickName");
		String user_name = request.getParameter("name");
		String user_email = request.getParameter("email");
		String user_phone = request.getParameter("phone");
		
		UserDto userDto = new UserDto();
		
		userDto.setUser_id(user_id);
		userDto.setUser_pw(user_pw);
		userDto.setUser_nickname(user_nickname);
		userDto.setUser_name(user_name);
		userDto.setUser_email(user_email);
		userDto.setUser_phone(user_phone);
		
		Signup_signin_dao dao = sqlSession.getMapper(Signup_signin_dao.class);
		
		
		
		rttr.addFlashAttribute("insertResult", dao.signUserInsert(userDto));
		rttr.addFlashAttribute("afterInsert", true);
		
		
	}
}
