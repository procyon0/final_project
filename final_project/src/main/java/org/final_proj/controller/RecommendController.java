/** 추천 상품을 출력하는 REST 방식의 컨트롤러
 * 
 * */
package org.final_proj.controller;

import org.final_proj.service.SearchService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/recommend/*")
@Log4j
@AllArgsConstructor
public class RecommendController {
	
	
}
