/** 메인(시작) 화면을 담당하는 컨트롤러
 * 
 */
package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class IndexController {	
	
	// /main 요청을 main.jsp 페이지로 리다이렉트 시킴
	@RequestMapping("/index")
	public void home(Model model) {
		
	}
	
	@GetMapping("/searchMain")
	public void searchMain() {
		
	}
}
