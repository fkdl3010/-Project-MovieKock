package com.koreait.movie.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommentController {

	@RequestMapping(value="my_write_view_page.do", method=RequestMethod.GET)
	public String view(HttpServletRequest request, Model model) {
	    model.addAttribute("request", request);
	    My_write_view_page_Command command = new My_write_view_page_Command();
	    command.execute(sqlSession, model);
	    return "my_page/my_write_view_page";   
	}

	
	
	
	/*
	@RequestMapping(value = "/movie/my_write_view_page")
	public ModelAndView boardDetail(HttpServletRequest req) {
		
		ModelMap model = new ModelMap();
		
		Map<String, Object> param=new HashMap<String, Object>();
		param.put("user_no", Integer.parseInt(req.getParameter("user_no")) );
		List<Map<String, Object>> list = commentService.selectmy_write_view(param);
		model.addAttribute("list", list);
		return new ModelAndView("/my_write_view", model);
		
	}
	*/
	
}
