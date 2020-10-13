package org.final_proj.service;

import java.util.ArrayList;
import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.MemberVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class CartServiceTests {
	@Setter(onMethod_ = @Autowired)
	private CartService cartService;

	@Test
	public void 장바구니_목록_꺼내오기_테스트() {
		MemberVO member = new MemberVO();
		String userId = "test0000";
		List <CartDTO> items = new ArrayList<CartDTO>();
		member.setUserId(userId);
		items = cartService.cartList(member);
		items.forEach(item -> log.info(item));
	}

	@Test
	public void 장바구니_물건_추가하기_테스트() {
		String goodsNo ="11473";
		CartDTO item = new CartDTO("test0000", goodsNo);
		item.setAmount(10L);
		item.setUnitPrice(0L);
		cartService.addToCart(item);
	}

	@Test
	public void 장바구니에_있는_물건_여러_개_삭제하기() {
		List<CartDTO> items = new ArrayList<CartDTO>();
		items.add(new CartDTO("test0000", "31473"));
		items.add(new CartDTO("test0000", "31474"));
		cartService.deleteFromCart(items);
	}

	@Test
	public void 물건_개수_수정하기() {
		CartDTO item = new CartDTO("test0000", "31475");
		item.setAmount(20L);
		cartService.updateAmount(item);
	}

	@Test 
	public void getGoodsTest() {

		List<CartDTO> items = new ArrayList<CartDTO>();
		items.add(new CartDTO("test1111","31474"));
		items.add(new CartDTO("test1111","31476"));
		cartService.checkoutGoods(items);

	}

}
