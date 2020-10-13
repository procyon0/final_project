package org.final_proj.controller;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.google.gson.Gson;import jdk.net.SocketFlow.Status;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.List;

import org.final_proj.domain.CartDTO;
import org.final_proj.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
@EnableWebSecurity
public class CartContollerTests {
	@Setter
	private MockMvc mockMvc;
	
	@Autowired
	private WebApplicationContext wctx;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(wctx).build();
	}
	
	//@WithMockUser("ROLE_USER")
	@Test
	public void 장바구니의_물건_가져오기() {
		MemberVO member = new MemberVO();
		member.setUserId("test0000");
		String url = "http://localhost:8080/cart/list";
		
		String data = new Gson().toJson(member);
		
		try {
			mockMvc.perform(post(url)
					.accept("application/json;charset=utf-8")
						.contentType("application/json;chaset=utf-8").content(data))
			.andExpect(status().isOk());
		} catch(Exception e) {
			e.getStackTrace();
		}
	} 
	
	@WithMockUser("ROLE_USER")
	@Test
	public void 장바구니에_물건_추가하기() {
		/*
		 * log.info(">>> 테스트 2 시작"); String userId = "test0000"; String url =
		 * "http://localhost:8080/cart/add"; CartDTO cart = new CartDTO();
		 * cart.setUserId(userId); cart.setGoodsno("43337"); cart.setAmount(5L); String
		 * json = new Gson().toJson(cart);
		 * 
		 * try { mockMvc.perform(post(url).accept("application/json;charset=utf-8")
		 * .contentType("application/json;charset=utf-8").content(json)).andExpect(
		 * status().isOk()); log.info(">>> 테스트 2 끝"); } catch (Exception e) {
		 * e.getStackTrace(); }
		 */
		String url = "http://localhost:8080/cart/add";
		CartDTO item = new CartDTO("test0000", "31474");
		item.setAmount(5L);
		String data = new Gson().toJson(item);
		try {
			mockMvc.perform(post(url)
					.accept("application/json;charset=utf-8")
						.contentType("application/json;chaset=utf-8").content(data))
			.andExpect(status().isOk());
		} catch(Exception e) {
			e.getStackTrace();
		}
	}
	
	@WithMockUser("ROLE_USER")
	@Test
	public void 장바구니_물건_여러_개_삭제하기() {
		String url = "http://localhost:8080/cart/delete";
		List<CartDTO> items = new ArrayList<CartDTO>();
		items.add(new CartDTO("test0000", "31474"));
		items.add(new CartDTO("test0000", "31475"));
		String data = new Gson().toJson(items);
		
		try {
			mockMvc.perform(post(url)
					.accept("application/json;charset=utf-8")
						.contentType("application/json;chaset=utf-8").content(data))
			.andExpect(status().isOk());
		} catch(Exception e) {
			e.getStackTrace();
		}
	}
	
	@WithMockUser("ROLE_USER")
	@Test
	public void 장바구니_물건_개수_변경하기() {
		String url = "http://localhost:8080/cart/update";
		CartDTO item = new CartDTO("test0000", "11473", 20L);
		String data = new Gson().toJson(item);
		
		try {
			mockMvc.perform(post(url)
					.accept("application/json;charset=utf-8")
						.contentType("application/json;chaset=utf-8").content(data))
			.andExpect(status().isOk());
		} catch(Exception e) {
			e.getStackTrace();
		}
	}
	
	@Test
	@WithMockUser("ROLE_USER")
	public void 특정_물품_가져오기() {
		/*
		 * String url = "http://localhost:8080/cart/goods"; CartDTO item = new
		 * CartDTO(); item.setGoodsno("43337"); item.setUserId("test0000"); String json
		 * = new Gson().toJson(item);
		 * 
		 * try { mockMvc.perform(post(url).accept("application/json;charset=utf-8")
		 * .contentType("application/json;charset=utf-8").content(json)).andExpect(
		 * status().isOk()); } catch (Exception e) { e.getStackTrace(); }
		 */
	}
}
