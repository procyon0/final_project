package org.final_proj.service;

import org.final_proj.domain.AuthVO;
import org.final_proj.domain.MemberVO;

public interface MemberService {

	public void register(MemberVO vo, AuthVO auth) throws Exception;
	public void registerMember(MemberVO vo) throws Exception;
	
}
