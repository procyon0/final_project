package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.Criteria;
import org.final_proj.domain.GoodsVO;
import org.final_proj.mapper.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class GoodsServiceImpl implements GoodsService {
	
	@Setter(onMethod_= @Autowired)
	private GoodsMapper mapper;

	@Override
	public List<String> getGoodsNoList() {
		return mapper.getGoodsNoList();
	}

	@Override
	public List<GoodsVO> getGoodsAll(Criteria cri) {
		return mapper.getGoodsAll();
	}

	@Override
	public void updateGoods(GoodsVO vo) {
		mapper.updateGoods(vo);
		
	}

	@Override
	public GoodsVO getDetail(String goodsNo) {
		return mapper.getDetail(goodsNo);
	}

	@Override
	public List<GoodsVO> getList(Criteria cri) {
		return mapper.getList(cri);
	}

	
	
	
	
	
	
	
//	@Override
//	public List<String> getGoodsNoList() {
//		return mapper.getGoodsNoList();
//	}
//
//	@Override
//	public List<GoodsVO> getGoodsAll() {
//		return mapper.getGoodsAll();
//	}
//
//	@Override
//	public void updateGoods(GoodsVO vo) {
//		mapper.updateGoods(vo);
//		
//	}
//	



}
