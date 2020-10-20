package org.final_proj.mapper;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.OrderVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class OrderMapperTests {
	@Setter(onMethod_ = @Autowired)
	private OrderMapper orderMapper;
	
	@Test
	public void insertOrderTest() {
		List<OrderVO> ol = new ArrayList<OrderVO>();
		Date today = new Date();
		Long orderId = today.getTime();
		ol.add(new OrderVO(orderId, "test1111", "31474", 1L, 3900L, 3900L));
		ol.add(new OrderVO(orderId, "test1111", "31476", 1L, 4100L, 4100L));
		orderMapper.insertOrder(ol);
	}
	
	@Test
	public void deleteFromCartTest() {
		List<CartDTO> cl = new ArrayList<CartDTO>();
		cl.add(new CartDTO("test1111", "31474"));
		cl.add(new CartDTO("test1111", "31476"));
		orderMapper.deleteOrderedGoods(cl);
	}
	
	@Test
	public void getDetailTest() {
		Long orderId = 1602653473979L;
		orderMapper.getDetail(orderId);
	}
	
	@Test
	public void getSumTest() {
		String orderId = "1602653473979L";
		orderMapper.getSum();
	}
	
	@Test
	public void getAllHistoryTest() {
		log.info("모든 주문 내역을 불러옵니다.........");
		orderMapper.getAllHistory();
	}
}
