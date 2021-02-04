package com.koreait.movie.command.signup_signin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.Signup_signin_dao;

public class Signup_signin_userSelectMovieListCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String movie = request.getParameter("userSelectMovieList");
		

		String[] movieList = movie.split(",");
		
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("movieList", movieList);
		
		Signup_signin_dao dao = sqlSession.getMapper(Signup_signin_dao.class);
		
		List<Integer> genre = dao.userSelectMovieList(resultMap);
		resultMap.put("genre", genre);
		resultMap.put("user_no", 1);
		int insertResult = dao.userInsertGenre(resultMap);
		
	}

}
