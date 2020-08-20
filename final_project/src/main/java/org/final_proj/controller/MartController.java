/** 상품 판매 페이지(mart)에서 페이지 간의 이동을 담당하는 컨트롤러
 *	
 **/
package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mart/*")
@AllArgsConstructor
public class MartController {

}
