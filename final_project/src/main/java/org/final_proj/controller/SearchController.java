package org.final_proj.controller;

import java.util.List;

import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/search/*")
@Log4j
public class SearchController {
	// 검색 결과를 필터링해 다시 출력하는 메소드
	// 데이터를 search 페이지에 어떻게 다시 출력해야 하는지 모르겠음
	@GetMapping("/search/filter")
	public String searchFilter(@RequestParam String keyword, Model model) {
		log.info("filtering---------------------------------------------");
		return "/search/filter";
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// 모든 레시피를 출력함
	// 실제로 쓸 지는 모르겠음
	@GetMapping("/all")
	public void all(Model model) {
		log.info("all");
		model.addAttribute("all", service.getList());

	}
	
	@GetMapping("/search")
	public void searchMain(@RequestParam("query") String query, @RequestParam("type") String type, Model model) {
		log.info("search query: " + query + "--------------------------------");
		model.addAttribute("query", query);
		model.addAttribute("type", type);
		SearchDTO result = new SearchDTO();
		result.setQuery(query);
		result.setType(type);
		List<RecipeVO> recipe = service.searchResult(result);
		model.addAttribute("recipe", recipe);
		// 검색 결과 추리기

		List<String> way = service.searchWay(result);
		List<String> kind = service.searchKind(result);

		model.addAttribute("way", way); model.addAttribute("kind", kind);


	}
}
