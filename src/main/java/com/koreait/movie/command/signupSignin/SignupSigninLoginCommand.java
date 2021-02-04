package com.koreait.movie.command.signupSignin;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.SignupSigninDao;
import com.koreait.movie.dto.UserDto;

public class SignupSigninLoginCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpServletResponse response = (HttpServletResponse)map.get("response");
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		String rememberId = request.getParameter("rememberId");
		
		Cookie cookie = null;
		
		if (rememberId != null) {
			cookie = new Cookie("id", user_id);
			cookie.setMaxAge(60*60*24*7);
			response.addCookie(cookie);
		}
		
		UserDto userDto = new UserDto();
		
		userDto.setUser_id(user_id);
		userDto.setUser_pw(user_pw);

		SignupSigninDao dao = sqlSession.getMapper(SignupSigninDao.class);
		
		UserDto loginUser = dao.loginUser(userDto);
		
		HttpSession session = request.getSession();
		
		if(loginUser == null) {
			model.addAttribute("loginResult", false);
		} else {
			model.addAttribute("loginResult", true);
			session.setAttribute("loginUser", loginUser);
		}
	}

}
