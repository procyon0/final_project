package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.MemberVO;

public interface CartService {
	// 특정 사용자의 장바구니 목록을 가져옴
	public List<CartDTO> cartList(MemberVO member);
	
	// 사용자의 장바구니에 제품을 등록함
	public void addToCart(CartDTO item);
	
	// 사용자의 장바구니 제품을 여러 개 삭제함
	public void deleteFromCart(List<CartDTO> items);
	
	// 장바구니에 있는 제품의 개수를 변경함
	public void updateAmount(CartDTO item);
	
	// 장바구니의 전체 상품의 합 구하기
	public void getCartSum(MemberVO member);
}
