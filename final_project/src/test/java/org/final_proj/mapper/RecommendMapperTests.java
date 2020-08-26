package org.final_proj.mapper;

import java.util.List;

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
}
