package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardAttachVO;

public interface BoardAttachMapper {

	public void insert(BoardAttachVO vo);
	
	public void delete(String uuid);
	
	public List<BoardAttachVO> findByBno(Long bno);
	// 578쪽에서 추가함
	public void deleteAll(Long bno);
	// 600쪽에서 추가함
	public List<BoardAttachVO> getOldFiles();
	
}
