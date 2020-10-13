package org.final_proj.service;

import org.final_proj.domain.AuthVO;
import org.final_proj.domain.MemberVO;
import org.final_proj.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	@Override
	public void registerMember(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		log.info("insert vo");
		memberMapper.insert(vo);
	}

	@Transactional
	@Override
	public void register(MemberVO vo, AuthVO auth) throws Exception {	
		
		
		System.out.println("암호화 되기 전 : "+vo.getUserPwd());
		vo.setUserPwd(bcryptPasswordEncoder.encode(vo.getUserPwd()));
		vo.setRePwd(bcryptPasswordEncoder.encode(vo.getRePwd()));
		System.out.println("암호화 된 후 : "+vo.getUserPwd());
		System.out.println("insert vo");
		memberMapper.insert(vo);
		
		
		System.out.println("insert auth");
		memberMapper.authinsert(auth);

		
		System.out.println("end insert");
		
	}

}
