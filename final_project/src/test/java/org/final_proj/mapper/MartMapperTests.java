package org.final_proj.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MartMapperTests {
	@Setter(onMethod_ = @Autowired)
	private MartMapper mapper;
	
	@Test
	public void getProductListTest() {
		mapper.getProductList().forEach(p -> log.info(p));
	}
}
