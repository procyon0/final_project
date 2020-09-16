package org.final_proj.controller;


import java.util.ArrayList;
import java.util.List;

import org.final_proj.domain.AuthVO;
import org.final_proj.domain.MemberVO;
import org.final_proj.mapper.MemberMapper;
import org.final_proj.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class SecuController {
	
	private MemberService service;
	
	
	//sign up get
	@RequestMapping(value="/member/register", method=RequestMethod.GET)
	public void getRegister() throws Exception{
		log.info("get register.........");
	}
	
	//sign up post
	@RequestMapping(value="/member/register", method=RequestMethod.POST)
		public String postRegister(MemberVO vo, AuthVO auth) throws Exception{
			log.info("post register...........");
			List<AuthVO> authList = new ArrayList<AuthVO>();
			vo.setAuthList(authList);
			authList.add(auth);
			log.info(vo+"*********");
			log.info(auth+"============");
			service.register(vo, auth);

			return null;
		}
	
	//=================================================================
	@GetMapping("/secu/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("error: "+error);
		log.info("logout: "+logout);
		
		if(error != null) {
		model.addAttribute("error", "로그인 실패");
	}
		if(logout != null){
			model.addAttribute("logout","로그아웃 완료");
		}

	}
	
	@GetMapping("/admin/admin")
	public void doadmin() {
		log.info("admin page........");
	}
	
	@GetMapping("/secu/member")
	public void domember() {
		log.info("member page........");
	}
	
	@GetMapping("/accessError")
	public void doerror() {
		log.info("error page........");
	}
	
	@GetMapping("/secu/logout")
	public void dologout() {
		log.info("logout page........");
	}
	
	@GetMapping("/index")
	public void doindex() {
		log.info("index page........");
	}
	@RequestMapping(value="/accessError")
	public String doError(){
		return "/accessError";
	}
	

	
}
