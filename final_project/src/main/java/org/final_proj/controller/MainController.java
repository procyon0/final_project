/** 메인(시작) 화면을 담당하는 컨트롤러
 * 
 */
package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {	

	// "/main" 요청을 main.jsp 페이지로 리다이렉트 시킴
	@RequestMapping("/main")
	public String home(Model model) {
		return "main";
	}
}
