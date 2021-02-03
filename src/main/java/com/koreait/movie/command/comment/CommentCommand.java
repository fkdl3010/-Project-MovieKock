package com.koreait.movie.command.comment;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.dao.Comment_dao;
import com.koreait.movie.dao.Signup_signin_dao;
import com.koreait.movie.dto.CommentDto;

public class CommentCommand implements CommonMapCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		Comment_dao simpleDao = sqlSession.getMapper(Comment_dao.class);
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		}  
		
		// beginRecord + endRecord를 list를 가져오는 simpleList()에 전달합니다.
		List<CommentDto> list = Comment_dao.CommentDto(user_no, movie_no, comments_title, comment_date);
		
		// Paging을 만듭니다. ( 이전 1 2 3 4 5 다음 )
		// 아래 paging의 path는 List마다 다릅니다.
		// SimpleListCommand  :  simpleListPage.do
		// BoardListCommand   :  boardListPage.do
		// 검색결과의 페이징  :  boardListPage.do?query=검색
		String paging = Paging.getPaging("simpleListPage.do", totalRecord, recordPerPage, page);
		
		model.addAttribute("list", list);
		
		model.addAttribute("paging", paging);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("page", page);
		model.addAttribute("recordPerPage", recordPerPage);

	}

}
	
	
	/*
	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		
		int user_no = (Integer)map.get(user_no);
		int movie_no = (Integer)map.get(movie_no);
		String comments_title = (String)map.get(comments_title);
		Date comment_date = (Date)map.get(comment_date);
		
		Comment_dao dao = sqlSession.getMapper(Comment_dao.class);
		
		result = dao.commentList(user_no, movie_no, comments_title, comment_date);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		
		
		return null;
	}
	*/
}
