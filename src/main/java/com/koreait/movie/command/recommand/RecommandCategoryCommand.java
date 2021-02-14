package com.koreait.movie.command.recommand;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.RecommandDao;
import com.koreait.movie.dto.MovieDto;
import com.koreait.movie.dto.UserDto;

public class RecommandCategoryCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		RecommandDao dao = sqlSession.getMapper(RecommandDao.class);
		
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		
		String genre = request.getParameter("genre");
		
		int genre_no = 5;
		//int genre_no = Integer.parseInt(genre);

		List<MovieDto> movieAllList = dao.movieListGenreAll();
		List<MovieDto> movieList = dao.movieListGenre(genre_no);
		
		
		if(genre_no==0) {
			model.addAttribute("movieList",movieAllList);
		}else {
			model.addAttribute("movieList",movieList);
		}
		


	}

}
