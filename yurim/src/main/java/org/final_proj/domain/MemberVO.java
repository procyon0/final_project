package org.final_proj.domain;


import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
		private String userId;
		private String userPwd;
		private String rePwd;
		private String userName;
		private String mailAddress;
		private String address;
		//private Date regDate; 
		//private boolean enabled;
		
		private List<AuthVO> authList;
}
