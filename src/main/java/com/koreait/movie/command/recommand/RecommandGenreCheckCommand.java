package com.koreait.movie.command.recommand;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.dao.RecommandDao;
import com.koreait.movie.dto.MovieDto;

public class RecommandGenreCheckCommand implements CommonMapCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		
		
		Map<String, Object> map = model.asMap();
		RecommandDao dao = sqlSession.getMapper(RecommandDao.class);
		
		int genre_no = (Integer)map.get("genreNo");
		
	
		//String genre = (String)map.get("genreNo");
		
		//int genre_no = Integer.parseInt(genre);
		
		
		
		List<MovieDto> movieGenreAllList = dao.movieListGenreAll();
		List<MovieDto> movieGenreList = dao.movieListGenre(genre_no);
		
		Map<String, Object> genreMap = new HashMap<String, Object>();
		
		genreMap.put("movieGenreAllList",movieGenreAllList);
		
		if(genre_no==0) {
			genreMap.put("movieGenreList",movieGenreAllList);
		}else {
			genreMap.put("movieGenreList",movieGenreList);
		}
		
	  // genreMap.put("genreNo",genre);
		
		return genreMap;
		
	}

}
