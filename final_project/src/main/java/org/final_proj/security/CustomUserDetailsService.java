package org.final_proj.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.final_proj.domain.MemberVO;
import org.final_proj.mapper.MemberMapper;
import org.final_proj.security.domain.CustomUser;

import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Log4j
public class CustomUserDetailsService implements UserDetailsService {
	@Setter(onMethod_ = {@Autowired})
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		log.info("Load User By UserName: " + userName);
		//userName means userid
		MemberVO member = memberMapper.read(userName);
		log.info("queried by member mapper: "+ member);
		log.info("사용자 아이디: " + member);
		
		if(member == null) {
			// 나중에 에러처리 해야할 듯
			return null;
		}else {
			return new CustomUser(member);
		}
	}

}
