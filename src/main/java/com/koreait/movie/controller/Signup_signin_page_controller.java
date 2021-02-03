package com.koreait.movie.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.command.signup_signin.Signup_signin_insertUserCommand;
import com.koreait.movie.command.signup_signin.Signup_signin_loginCommand;
import com.koreait.movie.command.signup_signin.Signup_signin_emailCheckCommand;
import com.koreait.movie.command.signup_signin.Signup_signin_idCheckCommand;
import com.koreait.movie.command.signup_signin.Signup_signin_nickCheckCommand;
import com.koreait.movie.common.CommonMapCommand;

@Controller

public class Signup_signin_page_controller {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	private Signup_signin_idCheckCommand idcheckCommand;
	private Signup_signin_nickCheckCommand nickCheckCommand;
	private Signup_signin_emailCheckCommand emailCheckCommand;
	private Signup_signin_insertUserCommand insertUserCommand;
	private Signup_signin_loginCommand loginCommand;
	
	@Autowired
	public void setBean(Signup_signin_idCheckCommand idcheckCommand,
						Signup_signin_nickCheckCommand nickCheckCommand,
						Signup_signin_emailCheckCommand emailCheckCommand,
						Signup_signin_insertUserCommand insertUserCommand,
						Signup_signin_loginCommand loginCommand) {
		this.idcheckCommand = idcheckCommand;
		this.nickCheckCommand = nickCheckCommand;
		this.emailCheckCommand = emailCheckCommand;
		this.insertUserCommand = insertUserCommand;
		this.loginCommand = loginCommand;
	}
	
	
	@RequestMapping(value="signup_page.do")
	public String signup_page() {
		return "signup_signin_page/signup_page";
	}
	
	@RequestMapping(value="login_page.do")
	public String login_page()	{
		return "signup_signin_page/login_page";
	}
	
	@RequestMapping(value="signup_choice_page.do")
	public String signup_choice_page() {
		return "signup_signin_page/signup_choice_page";
	}
	
	@RequestMapping(value="find_idpw_page.do")
	public String find_idpw_page() {
		return "signup_signin_page/find_idpw_page";
	}
	
	@RequestMapping(value="privacy_agreement_page.do")
	public String privacy_agreement_page() {
		return "signup_signin_page/privacy_agreement_page";
	}
	
	/*** 아이디 체크 ***/
	@RequestMapping(value="userIdCheck/{userId}",
					method=RequestMethod.POST,
					produces="application/json; charset=utf-8")
	@ResponseBody

	public Map<String, Object> signUp_idCheck(@PathVariable("userId") String userId,
												Model model){
		model.addAttribute("userId", userId);
		
		return idcheckCommand.execute(sqlSession, model);
	}
	
	/*** 닉네임 체크 ***/
	@RequestMapping(value="userNickCheck/{userNick}",
			method=RequestMethod.POST,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> signUp_nickCheck(@PathVariable("userNick") String userNick,
			Model model){
		model.addAttribute("userNick", userNick);
		
		return nickCheckCommand.execute(sqlSession, model);
	}
	
	/*** 이메일 체크 ***/
	@RequestMapping(value="userEmailCheck/{userEmail}",
			method=RequestMethod.POST,
			produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> signUp_emailCheck(@PathVariable("userEmail") String userEmail,
			Model model){
		model.addAttribute("userEmail", userEmail);
		
		return emailCheckCommand.execute(sqlSession, model);
	}
	
	/*** 회원가입 ***/
	@RequestMapping(value="userSignUp.do",
					method=RequestMethod.POST)
	public String signUp(HttpServletRequest request,
						RedirectAttributes rttr,
						Model model) {
		model.addAttribute("request", request);
		model.addAttribute("rttr", rttr);
		
		insertUserCommand.execute(sqlSession, model);
		
		return "redirect:/";

	}
	
	/*** 로그인 ***/
	@RequestMapping(value="login.do",
					  method=RequestMethod.POST)
	public String login(HttpServletRequest request,
//						 RedirectAttributes rttr,
						 Model model) {
		model.addAttribute("request", request);
//		model.addAttribute("rttr", rttr);
		
		loginCommand.execute(sqlSession, model);
		
		return "signup_signin_page/login_result_page";
		
	}

	
}
