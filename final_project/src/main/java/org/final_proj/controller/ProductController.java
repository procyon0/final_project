/** 상품(goods)에 관한 정보를 출력하는 컨트롤러
 * 	REST 컨트롤러로, 컨트롤러의 결과는 JSON으로 출력된다.
 */

package org.final_proj.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/product/*")
@Log4j
@AllArgsConstructor
public class ProductController {

}
