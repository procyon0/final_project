package org.final_proj.service;

import java.util.ArrayList;
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
	
	//ingre를 쪼개서  넣어서  상품정보를 가져와서(가격이름 등등) 하나에 다 모아서  List<GoodsVO> 담아둔다.
	@Override
	public List<GoodsVO> goodsList(String ingre) {
		log.info("상품재료:"+ingre);
		String [] goodsNameList = ingre.split(",");
		List <GoodsVO> goodsList= new ArrayList<GoodsVO>();
		for(String goodsName:goodsNameList) {
			GoodsVO vo = new GoodsVO();
		//	log.info("상품이름: "+goodsName.trim()); 
			vo = mapper.getGoods(goodsName.trim()); // 공백제거를 위해
			if(vo !=null) {
				goodsList.add(vo); 	// vo(GoodsVO)를 goodsList에 추가
				//log.info("상품이름: "+vo.getGoodsName()); 
			}
			
		}
		return goodsList;
	}



}
