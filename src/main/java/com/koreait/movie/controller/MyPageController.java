package com.koreait.movie.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.movie.command.myPage.MyPageCommand;
import com.koreait.movie.command.myPage.UserUpdateCommand;
import com.koreait.movie.dto.UserDto;

@Controller

public class MyPageController {
	
	@Autowired
	private SqlSession sqlSession;
	
	private MyPageCommand myPageCommand;
	private UserUpdateCommand userUpdateCommand;
	
	@Autowired
	public void setBean(
				MyPageCommand myPageCommand,
				UserUpdateCommand userUpdateCommand
			) {
		this.myPageCommand = myPageCommand;
		this.userUpdateCommand = userUpdateCommand;
	}

	@RequestMapping(value="myWritePage.do")
	public String myWritePage() {
		return "myPage/myWritePage";
	}
	
	@RequestMapping(value="myWriteViewPage.do")
	public String myWriteViewPage() {
		return "myPage/myWriteViewPage";
	}
	
	/**** 마이 페이지 접속 시 로그인 된 유저의 정보를 가져옴*****/
	@RequestMapping(value="myPage.do")
	public String myPage(HttpServletRequest request,
						Model model) {
		model.addAttribute("request", request);
		
		myPageCommand.execute(sqlSession, model);
		
		return "myPage/myPage";
	}
	
	/**** 마이 페이지 내에서 업데이트*****/
	@RequestMapping(value="userUpdate.do",
					method=RequestMethod.POST,
					produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> userUpdate(@RequestBody UserDto userDto,
											HttpServletRequest request,
											Model model){
		model.addAttribute("userDto", userDto);
		model.addAttribute("request", request);
		
		return userUpdateCommand.execute(sqlSession, model);
	}
	
	
}
