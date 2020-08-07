package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.RecipeVO;
import org.final_proj.domain.SearchDTO;
import org.final_proj.mapper.RecipeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class RecipeServiceImpl implements RecipeService {
	@Setter(onMethod_ = @Autowired)
	private RecipeMapper mapper;
	
	@Override
	public RecipeVO getDetail(Long id) {
		log.info(id +"번 게시글 불러오기---------------------------------------------------");
		return mapper.getDetail(id);
	}

	@Override
	public List<RecipeVO> getList() {
		log.info("목록 불러오기---------------------------------------------------------------");
		return mapper.getList();
	}

	@Override
	public List<RecipeVO> searchResult(SearchDTO query) {
		log.info("검색 결과 불러오기----------------------------------------------------------");
		return mapper.searchResult(query);
	}

	@Override
	public List<String> searchWay(SearchDTO query) {
		log.info("검색 결과에서 방법만 추리기-------------------------------------------------");
		return mapper.searchWay(query);
	}

	@Override
	public List<String> searchKind(SearchDTO query) {
		log.info("검색 결과에서 요리 종류만 추리기--------------------------------------------");
		return mapper.searchKind(query);
	}

	@Override
	public List<RecipeVO> getFilteredResult(String Keyword) {
		log.info("검색 결과 필터링 하기-------------------------------------------------------");
		return null;
	}
	
}
