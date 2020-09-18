package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.MemberVO;
import org.final_proj.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CartServiceImpl implements CartService{
	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;
	
	@Override
	public List<CartDTO> cartList(MemberVO member) {
		log.info("▶사용자\'"+member.getUserId()+"\'의 장바구니 목록을 불러옵니다...................");
		return mapper.get(member);
	}

	@Override
	public void addToCart(CartDTO item) {
		log.info("▶사용자\'"+ item.getUserId()+"\'의 장바구니에"
				+ item.getGoodsId()+"를 추가합니다...................");
		mapper.add(item);
	}

	@Override
	public void deleteFromCart(List<CartDTO> items) {
		log.info("▶사용자\'"+ items.get(0).getUserId() +"\'의 장바구니에서"
				+ items +"를 삭제합니다...................");
		mapper.delete(items);
	}

	@Override
	public void updateAmount(CartDTO item) {
		log.info("▶사용자\'"+ item.getUserId() +"\'의 장바구니에서"
				+ item.getGoodsId() +"의 개수를 " + item.getAmount() + "로 변경합니다..........");
		mapper.update(item);
	}

	@Override
	public void getCartSum(MemberVO member) {
		
		
	}


}
