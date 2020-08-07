package org.final_proj.service;

import static org.junit.Assert.assertNotNull;

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
public class RecipeServiceTests {
	@Setter(onMethod_ = @Autowired)
	private RecipeService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(recipe -> log.info(recipe));
	}
	
	@Test
	public void testGetDetail() {
		log.info(service.getDetail(201L));
	}
	
	@Test
	public void testSearchResult() {
		SearchDTO query = new SearchDTO();
		query.setQuery("후식");
		query.setType("K");
		service.searchResult(query).forEach(result -> log.info(result));
	}
	
	@Test
	public void testSearchWay() {
		SearchDTO query = new SearchDTO();
		query.setQuery("당근");
		query.setType("I");
		service.searchWay(query).forEach(result -> log.info(result));
	}
}
