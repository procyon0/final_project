/** 추천 상품을 출력하는 REST 방식의 컨트롤러
 * 
 * */
package org.final_proj.controller;

import java.util.*;

import org.final_proj.domain.GoodsVO;
import org.final_proj.domain.SearchDTO;
import org.final_proj.service.RecommendService;
import org.final_proj.service.SearchService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/recommend/*")
@Log4j
@AllArgsConstructor
public class RecommendController {
	private RecommendService service;

	// 1. 받아온 문자열을 잘라서 문자열 배열로 만듦.
	// 2. 문자열을 포함한 상품을 가져와서 리스트에 넣음.
	// 3. JSON 형식으로 출력함
	/*
	 * @PostMapping(value="/ingredient", produces=
	 * {MediaType.APPLICATION_JSON_UTF8_VALUE}) public ResponseEntity<List<GoodsVO>>
	 * getRecIngre(@RequestParam("str")String str, Model model) { log.
	 * info("추천 식재료--------------------------------------------------------------");
	 * SearchDTO query = new SearchDTO(); StringTokenizer tz = new
	 * StringTokenizer(str, "\n "); List<GoodsVO> gl = new ArrayList<GoodsVO>();
	 * while(tz.hasMoreTokens()) { query.setQuery(tz.nextToken());
	 * 
	 * } return new ResponseEntity<>(service.searchWay(search), HttpStatus.OK); }
	 */

	@PostMapping(value="/ingredient", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE}) 
	public ResponseEntity<HashSet<GoodsVO>> getRecIngre(@RequestParam("str") String str, Model model) {
		HashSet<GoodsVO> recommendGoods = new HashSet<GoodsVO>();
		SearchDTO search = new SearchDTO();
		StringTokenizer token = new StringTokenizer(str, "\n \'\"");
		log.info("문자열 도착함!●●●●●●\n" +str);
		
		while(token.hasMoreTokens()) {
			String tmpToken = token.nextToken();
			log.info(tmpToken);
			search.setQuery(tmpToken);
			recommendGoods.addAll(service.getIngredient(search));
		}
		return new ResponseEntity<>(recommendGoods, HttpStatus.OK);
	}

}
