package org.final_proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

// "/order"가 들어가는 주소는 모두 이 컨트롤러로 옴
@Controller
@Log4j
@RequestMapping("/order/*")
@AllArgsConstructor
public class OrderController {
	
	// 장바구니 페이지로 이동함
	@GetMapping("/cart")
	public void toList(Model model) {
		
	}
	
	// 주문 결제 페이지로 이동함
	@GetMapping("/checkout")
	public void toCheckout(Model model) {
		
	}
	
	// 결제 완료 페이지로 이동함
	@GetMapping("/completed")
	public void toCompleted(Model model) {
		
	}
	
	// 주문 조회 페이지로 이동함
	@GetMapping("/orderHistory")
	public void toOrderHistory() {
		
	}
	
	// 주문 상세 페이지로 이동함
	@GetMapping("/detail")
	public void toDetail() {
		
	}
	
}
