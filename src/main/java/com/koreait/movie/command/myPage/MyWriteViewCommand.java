package com.koreait.movie.command.myPage;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.dao.MyDao;
import com.koreait.movie.dao.MyWriteDao;
import com.koreait.movie.dto.CommentDto;

public class MyWriteViewCommand implements CommonMapCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		MyDao my_dao = sqlSession.getMapper(Mydao.class);
		CommentDto commentDto = my_dao.my_write((int)user_no); /* 의심 */
		model.addAttribute("CommentDto", commentDto); 
		
		
	}
	
	
	

}
