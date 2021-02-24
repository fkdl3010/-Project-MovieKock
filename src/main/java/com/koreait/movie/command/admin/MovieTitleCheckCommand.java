package com.koreait.movie.command.admin;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.dao.AdminDao;
import com.koreait.movie.dto.MovieDto;

public class MovieTitleCheckCommand implements CommonMapCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		
		AdminDao dao = sqlSession.getMapper(AdminDao.class);
		
		String tempMovieTitle = (String)map.get("movieTitle");
		
		String movieTitle = tempMovieTitle.replaceAll(" ", "_");
		
		MovieDto movieDto = dao.selectMovie(movieTitle);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		if(movieDto == null) {
			resultMap.put("checkResult", true);
		}else {
			resultMap.put("checkResult", false);
		}
		
		
		
		return resultMap;
	}

}
