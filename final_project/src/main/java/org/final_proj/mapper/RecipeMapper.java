package org.final_proj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.final_proj.domain.Criteria;
import org.final_proj.domain.RecipeVO;

public interface RecipeMapper {
	//@Select("SELECT * FROM recipe ORDER BY id DESC")
	public List<RecipeVO> getList();
	
	public List<RecipeVO> getListWithPaging(Criteria cri);
	
	public RecipeVO read(Long id);
	
}
