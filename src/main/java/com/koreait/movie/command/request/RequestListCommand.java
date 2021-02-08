package com.koreait.movie.command.request;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.common.Paging;
import com.koreait.movie.dao.RequestDao;
import com.koreait.movie.dto.FAQDto;

public class RequestListCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		RequestDao requestDao = sqlSession.getMapper(RequestDao.class);
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int page = 1;  
		if (request.getParameter("page") != null) {  
			page = Integer.parseInt(request.getParameter("page"));  
		}  
		
		int totalRecord = requestDao.totalRecord();  
		
		int recordPerPage = 5;  
		
		int beginRecord = (page - 1) * recordPerPage + 1;  
		int endRecord = beginRecord + recordPerPage - 1; 
		endRecord = endRecord < totalRecord ? endRecord : totalRecord;  
		
		List<FAQDto> list = requestDao.requestList(beginRecord, endRecord);
		
		String paging = Paging.getPaging("requestListPage.do", totalRecord, recordPerPage, page);
		
		model.addAttribute("list", list);
		
		model.addAttribute("paging", paging);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("page", page);
		model.addAttribute("recordPerPage", recordPerPage);

		
		
	}

}
