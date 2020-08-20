/** 검색 결과를 담당하는 REST 방식 컨트롤러
 * REST 방식: view(html 페이지)를 반환하는게 아닌 데이터(JSON 형식)만 반환함
 *
 */

package org.final_proj.controller;

import java.util.List;

import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;
import org.final_proj.service.SearchService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@RestController
@RequestMapping("/search/*")
@Log4j
@AllArgsConstructor
public class SearchController {
	private SearchService service;
	
	@GetMapping(value="/result",
				produces = {
						MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<RecipeVO>> getSearchResult (@RequestParam("type") String type, @RequestParam("query") String query) {
		log.info("search--------------------------------------------------------");
		SearchDTO search = new SearchDTO();
		search.setType(type);
		search.setQuery(query);
		log.info(search);
		return new ResponseEntity<>(service.getSearch(search), HttpStatus.OK);
	}

	
	  @GetMapping(value="/result/filter", produces = {
	  MediaType.APPLICATION_JSON_UTF8_VALUE})
	  public ResponseEntity<List<RecipeVO>>getFilteredResult (@RequestParam("type") String type, 
			  @RequestParam("query") String query, @RequestParam("filter") String filter,
			  @RequestParam("Keyword") String keyword) { 
		log.info("filtered results---------------------------------------------------------------------");
		SearchDTO search = new SearchDTO();
		search.setType(type);
		search.setQuery(query);
		search.setFilter(filter);
		search.setFilterWord(keyword);
		return new ResponseEntity<>(service.getSearch(search), HttpStatus.OK);
	  }
	 
	
	/*
	 * @GetMapping("/search/{type}/{query}") public void
	 * searchMain(@RequestParam("query") String query, @RequestParam("type") String
	 * type, Model model) { log.info("search query: " + query +
	 * "--------------------------------"); model.addAttribute("query", query);
	 * model.addAttribute("type", type); SearchDTO result = new SearchDTO();
	 * result.setQuery(query); result.setType(type); List<RecipeVO> recipe =
	 * service.getSearchResult(result); model.addAttribute("recipe", recipe); // 검색
	 * 결과 추리기
	 * 
	 * List<String> way = service.searchWay(result); List<String> kind =
	 * service.searchKind(result);
	 * 
	 * model.addAttribute("way", way); model.addAttribute("kind", kind); }
	 */
	
	// 검색 결과를 필터링해 다시 출력하는 메소드
	// 데이터를 search 페이지에 어떻게 다시 출력해야 하는지 모르겠음
/*	@GetMapping("/search/filter")
	public String searchFilter(@RequestParam String keyword, Model model) {
		log.info("filtering---------------------------------------------");
		return "/search/filter";
	}*/
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// 모든 레시피를 출력함
	// 실제로 쓸 지는 모르겠음
	/*
	 * @GetMapping("/all") public void all(Model model) { log.info("all");
	 * model.addAttribute("all", service.getList());
	 * 
	 * }
	 */
}
