/** 메인(시작) 화면을 담당하는 컨트롤러
 * 
 */
package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MainController {	
	
	// /main을 main.jsp 페이지로 리다이렉트 시킴
	@RequestMapping("/main")
	public String home(Model model) {
		return "main";
	}
}
