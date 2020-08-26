package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.GoodsVO;

public interface GoodsService {

	public List<GoodsVO> getList();
	
	public GoodsVO getDetail(String goodsId);
}
