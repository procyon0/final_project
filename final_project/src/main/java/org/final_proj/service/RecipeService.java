package org.final_proj.service;

import java.util.List;

import org.final_proj.domain.RecipeVO;

public interface RecipeService {
	public RecipeVO detail(Long id);
	public List<RecipeVO> getList();
	
}
