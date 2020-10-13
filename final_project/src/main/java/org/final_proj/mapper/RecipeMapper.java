/** 레시피를 출력하는 맵퍼
 * */
package org.final_proj.mapper;

import java.util.*;

import org.final_proj.domain.Criteria;
import org.final_proj.domain.RecipeVO;

import lombok.NoArgsConstructor;

public interface RecipeMapper {
	public List<RecipeVO> getList();
	
	public List<RecipeVO> getListWithPaging(Criteria cri);
	
	// 상세 정보 출력
	public RecipeVO getDetail(Long id);
	
	// 레시피 데이터 삽입
	public void insertRecipe(RecipeVO recipe);
	
	// 추천할 데이터 꺼내옴
	public String getIngredient(Long id);
}
