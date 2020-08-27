package org.final_proj.mapper;

import java.util.*;

import org.final_proj.domain.GoodsVO;
import org.final_proj.domain.SearchDTO;

public interface RecommendMapper {
	// 재료와 판매하는 상품 중에 같은 제품이 있으면 추천 상품으로 출력하는 메소드
	public HashSet<GoodsVO> getIngredient (SearchDTO search);
	
	// 밀키트 중 추천 상품을 추천하는 메소드
	public HashSet<GoodsVO> getMealkit (SearchDTO search);
}
