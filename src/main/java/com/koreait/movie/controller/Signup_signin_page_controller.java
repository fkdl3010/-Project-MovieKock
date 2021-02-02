package com.koreait.movie.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class Signup_signin_page_controller {
	
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
	@RequestMapping(value="'userIdCheck/userId",
					method=RequestMethod.POST,
					produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> signUp_idCheck(){
		
	}
	
	
}
