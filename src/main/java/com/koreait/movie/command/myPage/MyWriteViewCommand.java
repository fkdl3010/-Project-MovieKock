package com.koreait.movie.command.myPage;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.MyDao;
import com.koreait.movie.dao.MyWriteDao;
import com.koreait.movie.dto.CommentDto;

public class MyWriteViewCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		int user_no = request.getParameter(user_no);
		MyDao mydao = sqlSession.getMapper(Mydao.class);
		CommentDto commentDto = mydao.my_write(user_no); /* 의심 */
		model.addAttribute("CommentDto", commentDto); 
		
		
	}
	
	
	

}
