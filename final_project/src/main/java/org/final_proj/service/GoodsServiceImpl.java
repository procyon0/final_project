package org.final_proj.service;

import java.util.List;

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
	public List<GoodsVO> getList() {
		return mapper.getList();
		
	}
	
	@Override
	public GoodsVO getDetail(String goodsId) {
		return mapper.getDetail(goodsId);
	}

}
