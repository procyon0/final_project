/** 
 * 레시피(recipe)에 관한 것을 담당하는 컨트롤러
 * 기능: 검색, 상세보기, 검색 결과 필터링
 */
package org.final_proj.controller;

import java.util.List;

import org.final_proj.domain.GoodsVO;
import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;
import org.final_proj.service.GoodsService;
import org.final_proj.service.RecipeService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

// /recipe가 들어가는 주소는 모두 이 컨트롤러로 옴
@Controller
@Log4j
@RequestMapping("/recipe/*")
@AllArgsConstructor
public class RecipeController {
	private RecipeService service;
	private GoodsService gService;
	
	// 레시피 검색 메인 페이지로 이동
	@GetMapping("/main")
	public void goMain(Model model) {
		log.info(">>>> 레시피 검색 메인 페이지.........");
		model.addAttribute("query", "");
		model.addAttribute("type", "");
		model.addAttribute("search", "");
	}
	
	// 레시피의 상세 정보를 출력함
	@PreAuthorize("isAuthenticated()") 
	@GetMapping("/detail")
	public void getDetail(@RequestParam Long rcp_seq, Model model) {
		log.info(">>>> "+ rcp_seq + "번 레시피의 상세 정보를 출력함.........");
		RecipeVO vo = service.getDetail(rcp_seq);
		model.addAttribute("recipe", vo);
		String ingre = vo.getRcp_dtls();
		List<GoodsVO> gList = gService.goodsList(ingre); // 
		log.info("상품이름: "+gList);
		model.addAttribute("gList",gList);
		//log.info("상품이름: "+gList.get(0).getGoodsName());
	}
	
	// 검색 결과 페이지를 출력함
	@GetMapping("/search")
	public void getSearch(@RequestParam("type") String type, @RequestParam("query") String query, Model model) {
		log.info(">>>> 조건: " + type + ", 검색어: " + query + "의 검색 결과.........");
		SearchDTO search = new SearchDTO(type, query);
		model.addAttribute("query", query);
		model.addAttribute("type", type);
		model.addAttribute("search", search);
	}
}
