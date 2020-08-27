package org.final_proj.mapper;

import java.util.*;

import org.final_proj.domain.GoodsVO;
import org.final_proj.domain.SearchDTO;
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
public class RecommendMapperTests {
	@Setter(onMethod_ = @Autowired)
	private RecommendMapper mapper;
	
	/*
	 * @Test public void getIngredientTest() { SearchDTO search = new SearchDTO();
	 * search.setQuery("당근"); List<GoodsVO> gl = mapper.getIngredient(search);
	 * gl.forEach(goods -> log.info(goods)); }
	 * 
	 * @Test public void getMealkitTest () { SearchDTO search = new SearchDTO();
	 * search.setQuery("칼국수"); List<GoodsVO> gl = mapper.getMealkit(search);
	 * gl.forEach(goods -> log.info(goods)); }
	 */
	@Test
	public void getIngredientTest() {
		SearchDTO search = new SearchDTO();
		String str = "옥수수 물 당근";
		StringTokenizer token = new StringTokenizer(str, "\n ");
		HashSet<GoodsVO> gSet = new HashSet<GoodsVO>();
		
		while(token.hasMoreTokens()) {
			String keyword = token.nextToken();
			search.setQuery(keyword);
			
		}
		
		mapper.getIngredient(search);
		log.info("재료 추천 테스트 결과: ");
	}
}
