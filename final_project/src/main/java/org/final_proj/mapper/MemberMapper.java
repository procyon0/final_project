package org.final_proj.mapper;

import org.apache.ibatis.annotations.Param;
import org.final_proj.domain.AuthVO;
import org.final_proj.domain.MemberVO;


public interface MemberMapper {
		public MemberVO read(String userId);
		
		public MemberVO login(String userId);
		
		public void insert(MemberVO member);
		
		public void authinsert(AuthVO auth);
		
		public String findId(@Param("findName") String findname, @Param("findMail") String findmail);
		
		public int idCheck(MemberVO vo);
		
		public void updatemyinfo(MemberVO vo);
		
		public void deleteauth(AuthVO auth);
		
		public int deletemember(MemberVO vo);
		
		int findPwd(String userId, String userName, String mailAddress,String key);
		
		public int pwdCheck(MemberVO vo);
		
		public MemberVO allmember(MemberVO vo);

}
