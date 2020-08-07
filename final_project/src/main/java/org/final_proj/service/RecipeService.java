package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;

public interface RecipeService {
	public RecipeVO getDetail(Long id);
	public List<RecipeVO> getList();
	public List<RecipeVO> searchResult(SearchDTO query);
	
	//검색어 필터링 요소 찾기
	public List<String> searchWay(SearchDTO query);		// 방법
	public List<String> searchKind(SearchDTO query);	// 음식 종류
	
	// 검색어 필터링하기
	public List<RecipeVO> getFilteredResult(String Keyword);
}
