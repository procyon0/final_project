package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user")
public class UserController {
	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("▶▶에러 발생:" + error);
		log.info("▷▷로그아웃: " + logout);
		
		if(error != null) {
			model.addAttribute("error", "일치하는 계정이 없거나 비밀번호가 틀렸습니다.");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "로그아웃 되었습니다.");
		}
	}
	
	@GetMapping("/logout")
	public void getLogout() {
		log.info("▶▶▶로그아웃");
	}
}