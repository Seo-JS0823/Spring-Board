package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.MenuDTO;
import com.board.mapper.MenuMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/menus")
public class MenuController {
	
	@Autowired
	private MenuMapper menuMapper;
	
	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		String name = (String) session.getAttribute("userid");
		
		if(name == null || name.isEmpty()) {
			
			return "redirect:/";
			
		} else {
		
			List<MenuDTO> list = menuMapper.getMenuList();
			
			model.addAttribute("menus", list);
			
			return "menus/list"; // /WEB-INF/views/menus/list.jsp
		}
	}
	
	@RequestMapping("/writeform")
	public String writeForm() {	
		return "menus/write";
	}
	
	@RequestMapping("/writeform2")
	public String writeForm2() {
		return "menus/write2";
	}
	
	@RequestMapping("/write")
	public String write(MenuDTO menuDto, Model model) {
		// DB insert
		menuMapper.insertMenu(menuDto);
		
		/*
		 * sendRedirect() 메서드랑 다름 밑에 문자열은 forward()로 작동
		"redirect:/menus/list" => forward(request, response)
		 */
		return "redirect:/menus/list";
	}
	
	@RequestMapping("/write2")
	public String write2(MenuDTO menuDto) {
		
		MenuDTO target = menuMapper.getLastData();
		
		System.out.println(target);
		
		target.setMenu_name(menuDto.getMenu_name());
		
		menuMapper.insertMenu2(target);
		
		return "redirect:/menus/list";
	}
	
	@RequestMapping("/updateform")
	public String updateForm(MenuDTO menuDto, Model model) {
		// 수정할 정보 조회
		MenuDTO target = menuMapper.getMenuOne(menuDto);
		
		// 조회한 정보를 update.jsp에 보내기
		model.addAttribute("target", target);
		
		return "menus/update";
	}
	
	@RequestMapping("/update")
	public String update(MenuDTO menuDto) {
		
		menuMapper.updateMenu(menuDto);
		
		return "redirect:/menus/list";
	}
	
	// Build Path -> Configure ... -> java compiler -> Enabel... 체크 -> 맨 밑에 Store... 체크
	@RequestMapping("/delete")
	public String delete(@RequestParam String menu_id) {
		
		menuMapper.deleteMenu(menu_id);
		
		return "redirect:/menus/list";
	}
	
}
