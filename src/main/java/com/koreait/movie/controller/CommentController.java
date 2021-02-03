package com.koreait.movie.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.movie.command.comment.CommentCommand;


@Controller
public class CommentController {

	@RequestMapping(value = "/movie/my_write_view_page")
	public ModelAndView my_write_view_page(CommandMap commandMap) throws Exception {
		
		ModelAndView mv = new ModelAndView("/movie/my_write_view_page");
		Map<String, Object> detail = movieService.viewBoardDetail(commandMap.getMap());
		mv.addObject("detail",detail); 
		
		return mv;
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
