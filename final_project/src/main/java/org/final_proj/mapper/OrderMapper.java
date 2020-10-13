package org.final_proj.mapper;

import java.util.List;

import org.final_proj.domain.CartDTO;

public interface OrderMapper {
	// 주문 내역 테이블에 주문 정보를 등록함
	public void insertOrder(List<CartDTO> items);
	
	// 결제한 상품을 장바구니에서 삭제함
	public void deleteOrderedGoods(List<CartDTO> items);
}
