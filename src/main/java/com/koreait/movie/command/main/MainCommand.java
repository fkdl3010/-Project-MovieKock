
package com.koreait.movie.command.main;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.MainDao;
import com.koreait.movie.dto.MovieDto;
import com.koreait.movie.dto.UserDto;

public class MainCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		MainDao dao = sqlSession.getMapper(MainDao.class);
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		HttpSession session = request.getSession();
		
		UserDto loginUser = (UserDto)session.getAttribute("loginUser");
		
		if(loginUser != null) {
			
			int userNo = loginUser.getUser_no();
			String userNickname = loginUser.getUser_nickname();
			model.addAttribute("userNickname", userNickname);
			
			// 사용자의 취향에 맞춰 12개의 영화를 가져옴
			List<MovieDto> list = dao.userGenreList(userNo);
			
			model.addAttribute("mainList2", list);
		}else {
			List<MovieDto> mainList2 = dao.mainList2();
			
			model.addAttribute("mainList2", mainList2);
		}
		
		
		
		List<MovieDto> mainList1 = dao.mainList1();
		model.addAttribute("mainList1", mainList1);
	
		// 사용자 취향 정보가 담겨있는 영화들 12개
		List<MovieDto> mainList2 = dao.mainList2();
		
		
		
		List<MovieDto> mainList3 = dao.mainList3();
		model.addAttribute("mainList3", mainList3);
	}
}