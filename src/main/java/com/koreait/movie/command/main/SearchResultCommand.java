package com.koreait.movie.command.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.MainDao;
import com.koreait.movie.dto.MovieDto;

public class SearchResultCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		MainDao dao = sqlSession.getMapper(MainDao.class);
		MovieDto movieDto = new MovieDto();

		List<MovieDto> resultList = dao.resultList();
		model.addAttribute("resultList", resultList);
	}
}
/*
 * public class SearchResultCommand implements Command {
 * 
 * @Override public void execute(HttpServletRequest request, HttpServletResponse
 * response) {
 * 
 * String query = "%" + request.getParameter("searchKeyword") + "%";
 * 
 * request.setAttribute("list",
 * MainDao.getInstance().resultList(searchKeyword));
 * 
 * PathNRedirect pathNRedirect = new PathNRedirect();
 * pathNRedirect.setPath("mainPage/searchResultPage.jsp");
 * pathNRedirect.setRedirect(false); return pathNRedirect; }
 */
