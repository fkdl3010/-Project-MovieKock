package com.koreait.movie.command.qna;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.QnaDao;
import com.koreait.movie.dto.QnaDto;
import com.koreait.movie.dto.UserDto;

public class QnaAdminWriteCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		RedirectAttributes rttr = (RedirectAttributes)map.get("rttr");
		
		//String adminId = request.getParameter("adminId");
		
		HttpSession session = request.getSession();
		String admin_id = (String) session.getAttribute("admin_id");
		
		QnaDto qnaDto = new QnaDto();
		qnaDto.setAdmin_id(admin_id);
		
		
	    QnaDao qnaDao = sqlSession.getMapper(QnaDao.class);
	    int qnaAdminWriteResult = qnaDao.qnaAdminWrite(qnaDto);
		
		rttr.addFlashAttribute("qnaAdminWriteResult", qnaAdminWriteResult);
		
		// insert 후에 이동되었음을 JSP에게 알려주겠습니다.
		rttr.addFlashAttribute("afterqnaAdminWrite", true);
		
		
	}

}