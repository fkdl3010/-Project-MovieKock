
package com.koreait.movie.command.main;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.MainDao;
import com.koreait.movie.dto.MovieDto;

public class MainCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		MainDao dao = sqlSession.getMapper(MainDao.class);
		MovieDto movieDto = new MovieDto();

		List<MovieDto> mainList1 = dao.mainList1();
		model.addAttribute("mainList1", mainList1);
	
		List<MovieDto> mainList2 = dao.mainList2();
		model.addAttribute("mainList2", mainList2);
		
		List<MovieDto> mainList3 = dao.mainList3();
		model.addAttribute("mainList3", mainList3);
	}
}