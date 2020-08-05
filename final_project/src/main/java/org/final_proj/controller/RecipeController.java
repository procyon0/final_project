/** 
 * 레시피에 관한 것을 담당하는 컨트롤러
 */
package org.final_proj.controller;

import org.final_proj.service.RecipeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

// /recipe/가 들어가는 주소는 모두 이 컨트롤러로 옴
@Controller
@Log4j
@RequestMapping("/recipe/*")
@AllArgsConstructor
public class RecipeController {
	private RecipeService service;
	
	// 검색 결과를 표시함
	// 파라미터 전달 받아야함
	@GetMapping("/search")
	public String searchMain(@RequestParam("query") String query, @RequestParam("type") String type, Model model) {
		log.info("******search query: " + query);
		model.addAttribute("query", query);
		model.addAttribute("type", type);
		
		return null;
	}
	
	// 모든 레시피를 출력함
	// 실제로 쓸 지는 모르겠음
	@GetMapping("/all")
	public void all(Model model) {
		log.info("all");
		model.addAttribute("all", service.getList());
		
	}
	
	// 레시피의 상세 정보를 출력함
	@GetMapping("/detail")
	public void getDetail(@RequestParam Long id, Model model) {
		log.info("/detail");
		model.addAttribute("recipe", service.detail(id));
	}
	
	

	
}
