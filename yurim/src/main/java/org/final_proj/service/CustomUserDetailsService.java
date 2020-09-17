package org.final_proj.service;

import org.final_proj.domain.MemberVO;
import org.final_proj.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	
	@Setter(onMethod_=@Autowired)
	private MemberMapper memberMapper;
	
	@Autowired
	private BCryptPasswordEncoder pwdEncoder;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		log.warn("유저네임을 불러옴 : "+userName);
		
		//userName means userId
		MemberVO vo = memberMapper.read(userName);
		
		log.warn("queried by member mapper: "+vo);
		return vo == null ? null : new CustomUser(vo);
	}
	
	/*
	 * public void RegisterUser(MemberVO vo) {
	 * 
	 * //인코더 전 pwd log.info("Befor Encoder: "+vo.getUserPwd());
	 * 
	 * //인코더한 pwd 담기 String endcodedPassword = pwdEncoder.encode(vo.getUserPwd());
	 * //인코더 후 pwd log.info("After Encoder: "+endcodedPassword);
	 * log.info("Register User info: "+vo);
	 * 
	 * vo.setUserPwd(endcodedPassword); }
	 */

}
