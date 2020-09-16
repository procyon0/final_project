package org.final_proj.mapper;

import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.UserVO;

public interface CartMapper {
	// 현재 사용자의 카트를 가져옴
	public List<CartDTO> getCart(UserVO user);
	
	// 카트에 제품을 등록함
	public void addToCart(CartDTO cart);
	
	// 카트의 제품을 삭제함
	
	// 카트의 제품의 수량을 변경함
	
	// 카트의 제품을 일부 주문함
	
	// 카트의 제품의 전체 계산 가격을 출력함
}
