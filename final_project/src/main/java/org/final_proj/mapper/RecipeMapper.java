package org.final_proj.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Select;
import org.final_proj.domain.Criteria;
import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;

public interface RecipeMapper {
	public List<RecipeVO> getList();
	
	public List<RecipeVO> getListWithPaging(Criteria cri);
	
	// 검색 결과 출력
	public List<RecipeVO> searchResult(SearchDTO query);
	
	// 상세 정보 출력
	public RecipeVO getDetail(Long id);
	
	// 필터링 키워드 찾기
	public List<String> searchWay(SearchDTO query);
	
	public List<String> searchKind(SearchDTO query);
}
