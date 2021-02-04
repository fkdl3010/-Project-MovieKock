package com.koreait.movie.command.movieInfo;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dto.CommentDto;

public class MovieInfoCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		Movie_info_dao movie_info_dao = sqlSession.getMapper(Movie_info_dao.class);
		CommentDto commentDto = movie_info_dao.my_write((int)user_no); /* 의심 */
		model.addAttribute("CommentDto", commentDto); 
		
	}

}
