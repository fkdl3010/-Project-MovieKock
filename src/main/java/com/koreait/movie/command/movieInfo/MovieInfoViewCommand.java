package com.koreait.movie.command.movieInfo;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.MovieInfoDao;
import com.koreait.movie.dto.MovieDto;
import com.koreait.movie.dto.UserDto;

public class MovieInfoViewCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		MovieInfoDao dao = sqlSession.getMapper(MovieInfoDao.class);
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String movie = request.getParameter("movieNo");
		
//		영화정보, 배우 정보
		if(movie != null) {
			
			int movieNo = Integer.parseInt(request.getParameter("movieNo"));
			MovieDto movieDto = dao.getMovie(movieNo);
			model.addAttribute("movieDto", movieDto);
			
			List<String> actorList = dao.getMovieActor(movieNo);
			model.addAttribute("actorList", actorList);
			
			List<MovieDto> relationMovieList = dao.getRelationMovieList(movieNo);
			model.addAttribute("relationMovieList", relationMovieList);
			
		}
		
		
		
		HttpSession session = request.getSession();
		
		UserDto loginUser = (UserDto)session.getAttribute("loginUser");
		
		if(loginUser != null) {
			
			model.addAttribute("loginUser", loginUser);
		}
		
		
	}

}
