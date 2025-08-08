package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.TuserDTO;
import com.board.mapper.TuserMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/users")
public class TuserController {
	
	@Autowired
	private TuserMapper mapper;
	
	/* 해당 유저 리스트 조회 */
	@RequestMapping("/list")
	public String userList(HttpServletRequest request, Model model) {
		List<TuserDTO> userList = mapper.getTuserList();
		
		HttpSession session = request.getSession();
		
		String uid = (String) session.getAttribute("userid");
		String pwd = (String) session.getAttribute("passwd");
		
		if(uid == null || pwd == null) {
			System.out.println("테스트 실패");
		}
		
		model.addAttribute("uid", uid);
		model.addAttribute("pwd", pwd);
		model.addAttribute("userList", userList);
		
		return "users/userList";
	}
	
	/* 유저 추가 폼 보여주기 */
	@RequestMapping("/addform")
	public String addform() {
		return "users/add";
	}
	
	/* 유저 추가 실행 */
	@RequestMapping("/add")
	public String addTuser(TuserDTO tuserDto) {
		mapper.insertTuser(tuserDto);
		
		return "redirect:/users/list";
	}
	
	/* 유저 정보 변경 폼 보여주기 */
	@RequestMapping("/updateform")
	public String updateTuserForm(TuserDTO tuserDto, Model model) {
		TuserDTO target = mapper.getTuserUpdateData(tuserDto);
		System.out.println(target);
		model.addAttribute("target", target);
		
		return "users/updateTuser";
	}
	
	/* 유저 정보(이메일) 변경 실행 */
	@RequestMapping("/update")
	public String updateEmail(TuserDTO tuserDto) {
		mapper.updateTuserEmail(tuserDto);
		
		return "redirect:/users/list";
	}
	
	/* 유저 로그인 */
	@RequestMapping("/login")
	public String login(TuserDTO tuserDto, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		TuserDTO target = mapper.login(tuserDto);
		
		/* 세션 기능 추가 */
		if(target != null) {
			String userid = target.getUserid();
			String passwd = target.getPasswd();
			
			session.setAttribute("userid", userid);
			session.setAttribute("passwd", passwd);
			
			return "redirect:/menus/list";
		} else {
			return "error/loginError";			
		}
	}
	
	/* 유저 정보(포인트) 변경 실행 게시글 1건 작성당 100Point */
	
	
	/* 유저 삭제 실행 */
	@RequestMapping("/delete")
	public String deleteTuser(TuserDTO tuserDto) {
		mapper.deleteTuser(tuserDto);
		
		return "redirect:/users/list";
	}
	
}
