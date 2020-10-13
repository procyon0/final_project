package org.final_proj.mapper;

import java.util.List;

import org.final_proj.domain.Criteria;
import org.final_proj.domain.GoodsVO;

public interface GoodsMapper {

	// @Select("select * from Goods where goodsId > 0")
//	public List<GoodsVO> getList();
//
//	public List<GoodsVO> getListWithPaging(Criteria cri);
//
//	public GoodsVO getDetail(String goodsno);
	
	
		public List<String> getGoodsNoList();

		public List<GoodsVO> getGoodsAll();

		public void updateGoods(GoodsVO vo);

		public GoodsVO getDetail(String goodsNo);
		
		public List<GoodsVO> getList(Criteria cri);

}
