 package com.koreait.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {


<<<<<<< HEAD
	@RequestMapping(value= {"", "index.do"})
=======
	@RequestMapping(value= "/")
>>>>>>> 7dd2bc99f60f7d00016abe7f1d46232e4ea21e58
	public String index() {
		return "index";
	}
	
}
