package org.final_proj.mapper;

import java.util.*;

import org.final_proj.domain.GoodsVO;
import org.final_proj.domain.SearchDTO;

public interface RecommendMapper {
	// 재료 중 추천 상품을 추천하는 메소드
	public GoodsVO getIngredient(SearchDTO search); 
	// 밀키트 중 추천 상품을 추천하는 메소드
	public GoodsVO getMealkit (SearchDTO search);
}
