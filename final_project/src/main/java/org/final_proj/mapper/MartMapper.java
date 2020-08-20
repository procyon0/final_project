package org.final_proj.mapper;

import java.util.List;

import org.final_proj.domain.ProductVO;

public interface MartMapper {
	// 모든 상품 출력하기
	public List<ProductVO> getProductList ();
}
