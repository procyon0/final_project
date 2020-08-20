/** 샘플 페이지(동적 기능 적용 전 페이지)로 이동시켜주는 메소드들을 작성하는 컨트롤러입니다.
 * 
 */
package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class SampleController {	
	
	// /main 요청을 main.jsp 페이지로 리다이렉트 시킴
	@RequestMapping("/index")
	public void home(Model model) {
		
	}
	
	@RequestMapping("/sample/detail")
	public void sampleDetail(Model model) {
		
	}
	
	@RequestMapping("/sample/search")
	public void searchSample() {
		
	}
	
	@RequestMapping("/sample/mart")
	public void martSample() {
		
	}
}