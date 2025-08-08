package com.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FirstController {

	@RequestMapping("/")
	public String first(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		String userid = (String) session.getAttribute("userid");
		
		if(userid == null) {
			return "home";
		}
		
		return "redirect:/menus/list";
	}
}
