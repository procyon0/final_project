package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.GoodsVO;
import org.final_proj.domain.SearchDTO;

public interface RecommendService {
	// 키워드를 포함한 식재료를 가져옴
	public GoodsVO getIngredient (SearchDTO search);
	
	// 키워드를 포함한 밀키트를 가져옴
	public List<GoodsVO> getMealKit (SearchDTO search);
}
