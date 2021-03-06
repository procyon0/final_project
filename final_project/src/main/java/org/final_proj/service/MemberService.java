package org.final_proj.service;


import org.final_proj.domain.AuthVO;
import org.final_proj.domain.MemberVO;

public interface MemberService {

	public void register(MemberVO vo, AuthVO auth) throws Exception;
	public void registerMember(MemberVO vo) throws Exception;
	public String findid(String findname, String findmail);
	public int idCheck(MemberVO vo) throws Exception;
	public void updatemyinfo(MemberVO vo) throws Exception;
	public void deleteauth(AuthVO auth) throws Exception;
	public void deletemember(MemberVO vo) throws Exception;
	public MemberVO login(String userId)throws Exception;
	public int pwdCheck(MemberVO vo) throws Exception;

}
