package org.final_proj.controller;

import java.util.ArrayList;
import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.MemberVO;
import org.final_proj.service.CartService;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

// "/order"가 들어가는 주소는 모두 이 컨트롤러로 옴
@Controller
@Log4j
@EnableWebMvc
@RequestMapping("/order/*")
@AllArgsConstructor
public class OrderController {
	private CartService cartService;

	// 장바구니 페이지로 이동함
	@GetMapping("/cart")
	public void toList(Model model) throws Exception {
		log.info(">>>> 장바구니");
	}

	// 주문 결제 페이지로 이동함
	@PostMapping("/checkout")
	public void toCheckout(@RequestParam("items") List<String> items, @AuthenticationPrincipal MemberVO member,Model model) {
		log.info(">>>> 주문/결제 페이지");
		String userId = member.getUserId();
		log.info(userId);

		List<CartDTO> goods = new ArrayList<CartDTO>(); 

		for(int i = 0; i < items.size(); i++) { 
			goods.add(new CartDTO(userId, items.get(i))); 
		}
		model.addAttribute("goods", cartService.checkoutGoods(goods));
		model.addAttribute("member", member);
	}

	// 결제 완료 페이지로 이동함
	@PostMapping("/completed")
	public void toCompleted(@RequestParam("address") String address, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("memo") String memo, Model model) {
		log.info(">>>> 주문 완료 페이지");
		model.addAttribute("address", address);
		model.addAttribute("name", name);
		model.addAttribute("email", email);
		model.addAttribute("memo", memo);
	}

	// 주문 조회 페이지로 이동함
	@GetMapping("/history")
	public void toOrderHistory(@AuthenticationPrincipal MemberVO member,Model model) {
		log.info(">>>> 주문 내역 페이지");


	}

	// 주문 상세 페이지로 이동함
	@GetMapping("/detail")
	public void toDetail(@RequestParam("orderId")Long orderId,@AuthenticationPrincipal MemberVO member,Model model) {

	}

}
