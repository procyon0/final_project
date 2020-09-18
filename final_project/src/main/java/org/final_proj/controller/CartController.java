/** 장바구니에 있는 상품을 수정, 삭제 하는 기능을 담당하는 비동기형 컨트롤러
 * */
package org.final_proj.controller;

import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.MemberVO;
import org.final_proj.service.CartService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@AllArgsConstructor
@RequestMapping("/cart")
@Log4j
public class CartController {
	private CartService service;

	// 특정 사용자의 장바구니 목록을 불러와 JSON 형식으로 보냄
	@PostMapping(value="/list", produces="application/json;charset=UTF-8") 
	public ResponseEntity<List<CartDTO>> getCartList(@RequestBody MemberVO member) throws Exception {
		log.info(">>>>>> 장바구니 목록 불러오기");
		return new ResponseEntity<List<CartDTO>>(service.cartList(member), HttpStatus.OK);
	}

	// 사용자의 장바구니에 물건을 추가함
	@PostMapping(value="/add", produces="application/json;charset=UTF-8")
	public ResponseEntity<List<CartDTO>> addToCart(@RequestBody CartDTO item) throws Exception {
		log.info(">>>>>> 장바구니에 물건 추가하기");
		MemberVO member = new MemberVO();
		member.setUserId(item.getUserId());
		service.addToCart(item);
		return new ResponseEntity<List<CartDTO>>(service.cartList(member), HttpStatus.OK);
	}

	// 사용자의 장바구니에서 물건 여러 개 삭제하기
	@PostMapping(value="/delete", produces="application/json;charset=UTF-8")
	public ResponseEntity<List<CartDTO>> deleteFromCart(@RequestBody List<CartDTO> items) throws Exception {
		log.info(">>>>>> 장바구니의 물건 삭제하기");
		MemberVO member = new MemberVO();
		member.setUserId(items.get(0).getUserId());
		service.deleteFromCart(items);
		return new ResponseEntity<List<CartDTO>>(service.cartList(member), HttpStatus.OK);
	}

	// 사용자의 장바구니에 있는 물건의 개수 변경하기
	 @PostMapping(value="/update", produces="application/json;charset=UTF-8") 
	 public HttpStatus updateAmount(@RequestBody CartDTO item) throws Exception {
		 	service.updateAmount(item);
		 	return HttpStatus.OK;
	}
	 

}
