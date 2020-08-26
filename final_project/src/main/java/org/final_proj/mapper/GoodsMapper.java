package org.final_proj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.final_proj.domain.GoodsVO;

public interface GoodsMapper {

	//@Select("select * from Goods where goodsId > 0")
	public List<GoodsVO> getList();

	public GoodsVO getDetail(String goodsId);
	
	
}
   