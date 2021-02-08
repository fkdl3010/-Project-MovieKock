package com.koreait.movie.command.move;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.MoveDao;
import com.koreait.movie.dto.MovieDto;

public class MoveCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpServletResponse response = (HttpServletResponse)map.get("response");
		
		String choiceMovie = request.getParameter("choiceNo");
		
		int choiceMovieNo = Integer.parseInt(choiceMovie);
		
		MoveDao dao = sqlSession.getMapper(MoveDao.class);
		
		int movieNo = dao.movieNo(choiceMovieNo);
		
		int clickMovieNO = dao.clickMovieNo(no);
		
		model.addAttribute("movieNo", movieNo);
			
		
	}

}
