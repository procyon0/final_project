package org.final_proj.mapper;

import org.final_proj.domain.AuthVO;
import org.final_proj.domain.MemberVO;


public interface MemberMapper {
		public MemberVO read(String userId);
		
		public void insert(MemberVO member);
		
		public void authinsert(AuthVO auth);
}
