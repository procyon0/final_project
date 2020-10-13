package org.final_proj.mapper;

import java.util.List;

import org.final_proj.domain.Criteria;
import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;
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
public class RecipeMapperTests {
	@Setter(onMethod_ = @Autowired)
	private RecipeMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(recipe -> log.info(recipe));
	}
	
	@Test
	public void testPaging() {
		Criteria cri = new Criteria();
		// 3개 씩 2 페이지
		cri.setPageNum(1);
		cri.setAmount(5);
		List<RecipeVO> list = mapper.getListWithPaging(cri);
		list.forEach(recipe -> log.info(recipe.getRcp_seq()));
	}
	 
	@Test
	public void InsertRecipeTest() {
		RecipeVO recipe = new RecipeVO();
		recipe.setRcp_seq(87L);
		recipe.setRcp_nm("스트로베리 샐러드");
		recipe.setRcp_way2("기타");
		recipe.setRcp_pat2("반찬");
		recipe.setAtt_file_no_mk("http://www.foodsafetykorea.go.kr/uploadimg/cook/10_00087_1.png");
		recipe.setRcp_parts_dtls("스트로베리 샐러드\\n딸기 70g(7개), 플레인요거트 85g(1개), 양상추 70g(2장), 메추리알 30g(3개), 블루베리 15g(1큰술), 식초 약간, 소금 약간");
		recipe.setManual01("1. 냄비에 메추리알이 잠길 정도의 찬물에 식초, 소금을 넣어 삶는다. 물이 끓어오르면 5분 정도 더 삶아찬물에 헹군 후 껍질을 벗기고 반으로 자른다.a");
		recipe.setManual_img01("http://www.foodsafetykorea.go.kr/uploadimg/cook/20_00087_1.png");
		recipe.setManual02("");
		recipe.setManual_img02("");
		recipe.setManual03("");
		recipe.setManual_img03("");
		recipe.setManual04("");
		recipe.setManual_img04("");
		recipe.setManual05("");
		recipe.setManual_img05("");
		recipe.setManual06("");
		recipe.setManual_img06("");
		recipe.setManual07("");
		recipe.setManual_img07("");
		recipe.setManual08("");
		recipe.setManual_img08("");
		//log.info(recipe);
		mapper.insertRecipe(recipe);
	}
	
	@Test
	public void getIngredientTest() {
		Long id = 95L;
		mapper.getIngredient(id);
	}

}
