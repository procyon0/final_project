package org.final_proj.mapper;

import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.MemberVO;
import org.final_proj.domain.UserVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class CartMapperTests {
	@Setter(onMethod_ = @Autowired)
	private CartMapper cartMapper;
	
	@Test
	public void 전체_테이블_가져오기() {
		List<CartDTO> cl = null;
		cl = cartMapper.getAll();
		cl.forEach(p -> log.info(p));
	}
	
	@Test
	public void test000에_12번_물건을_5개_삽입하기() {
		CartDTO cart = new CartDTO();
		cart.setUserId("test0000");
		cart.setGoodsId("12");
		cart.setAmount(5L);
		cartMapper.add(cart);
	}
	
	@Test
	public void test0000의_카트에_있는_물건_조회_테스트() {
		MemberVO member = new MemberVO();
		member.setUserId("test0000");
		cartMapper.get(member);
	}
	
	@Test
	public void test000의_카트에_있는_8번_물건을_삭제하는_테스트() {
		CartDTO cart = new CartDTO();
		cart.setUserId("test0000");
		cart.setGoodsId("8");
		cartMapper.delete(cart);
	}
	
	@Test
	public void test0000의_카트에_있는_물건의_수량과_전체_가격을_수정하는_테스트() {
		CartDTO cart = new CartDTO();
		cart.setUserId("test0000");
		cart.setGoodsId("8");
		cart.setAmount(1L);
		cartMapper.update(cart);
	}
	
	@Test
	public void 카트에_있는_물건의_전체_가격의_합_구하기() {
		CartDTO cart = new CartDTO();
		cart.setUserId("test0000");
		log.info("▶김시험씨에 장바구니에 담긴 가격의 합은 " + cartMapper.getSum(cart) + " 입니다.");
	}
}
