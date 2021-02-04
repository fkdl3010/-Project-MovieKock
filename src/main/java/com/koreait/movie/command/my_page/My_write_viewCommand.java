package com.koreait.movie.command.my_page;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.dao.MyWriteDao;

public class My_write_viewCommand implements CommonMapCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		int no = Integer.parseInt(request.getParameter("user_no"));
		MyWriteDao my_write_dao = sqlSession.getMapper(MyWriteDao.class);
//		CommentDto dto = my_write_dao.my_write(user_no);
//		model.addAttribute("CommentDto", dto);  // view.jsp 에서 열어 볼 수 있게 넣어준다.
		
		
		return null;
	}
	
	
	

}
