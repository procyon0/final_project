package org.final_proj.mapper;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
		long temp_orderId = (long)(Math.random()*100000000) - 1;
		log.info("임시 주문 번호: " + temp_orderId);
		Long orderId = temp_orderId;
		Date today = new Date();
		log.info(today.getTime());
		
	}
}
