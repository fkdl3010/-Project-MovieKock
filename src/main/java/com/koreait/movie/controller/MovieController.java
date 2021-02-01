package com.koreait.movie.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	
	@RequestMapping(value="/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="myPage.do")
	public String myPage() {
		return "moviekock/myPage";
	}
	
	
	@RequestMapping(value="mainPage.do")
	public String mainPage() {
		return "moviekock/mainPage";
	}
	@RequestMapping(value="signupPage.do")
	public String signupPage() {
		return "moviekock/signupPage";
	}
	
	@RequestMapping(value="2nd.do")
	public String go2nd() {
		return "moviekock/2nd";
	}
	
	@RequestMapping(value="loginPage.do")
	public String goLoginPage()	{
		return "moviekock/loginPage";
	}
	
	@RequestMapping(value="choicePage.do")
	public String choicePage() {
		return "moviekock/choicePage";
	}
	
	@RequestMapping(value="myWritePage.do")
	public String myWritePage() {
		return "moviekock/myWritePage";
	}
	
	@RequestMapping(value="idPwPage.do")
	public String idPwPage() {
		return "moviekock/id-pwPage";
	}
	
	@RequestMapping(value="recommandPageRandom.do")
	public String recommandPageRandom() {
		return "moviekock/recommandPageRandom";
	}
	
	@RequestMapping(value="privacy_agreement_page.do")
	public String privacy_agreement_page() {
		return "moviekock/privacy_agreement_page";
	}
	
	@RequestMapping(value="movie_info_page.do")
	public String infoPage() {
		return "moviekock/movie_info_page";
	}
	
	
	@RequestMapping(value="myWriteViewPage.do")
	public String myWriteViewPage() {
		return "moviekock/myWriteViewPage";
	}
	
	
}