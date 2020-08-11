package org.final_proj.mapper;

import java.util.List;

import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;

public interface SearchMapper {
	// 검색 결과 출력
	public List<RecipeVO> getResult(SearchDTO query);
	
	// 필터링 키워드 찾기
	public List<String> searchWay(SearchDTO query);
	
	public List<String> searchKind(SearchDTO query);
	
	public List<RecipeVO> getFilteredResult(SearchDTO query);
}
