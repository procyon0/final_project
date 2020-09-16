package org.final_proj.mapper;

import org.final_proj.domain.UserVO;
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
public class CartMapperTests {
	@Setter(onMethod_ = @Autowired)
	private CartMapper cartMapper;
	
	@Test
	public void test0000의_카트에_있는_물건_조회_테스트() {
		UserVO user = new UserVO();
		user.setUserId("test0000");
		cartMapper.getCart(user);
	}
}
