package org.kwjsp.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {	
		
		return "index";
	}
//	@RequestMapping(value = "/member", method = RequestMethod.GET)
//	public String joinus() {
//		return "member/member";
//	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String boardwrite() {
		return "board/write";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String log() {
		return "member/login";
	}
}
