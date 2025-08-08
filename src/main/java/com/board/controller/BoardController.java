package com.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

	@RequestMapping("/board/list")
	public String boardForm(HttpServletRequest request, Model model) {
		
		
		return "";
	}
}
