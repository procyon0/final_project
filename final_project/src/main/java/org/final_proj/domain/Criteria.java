package org.final_proj.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class Criteria {
	private int pageNum;
	private int amount;
	
	//private String type;
	//private String query;
	
	public Criteria () {
		this(1, 5);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	/* 검색 타입
	 * 1. 재료: I 
	 * 2. 음식 이름: N
	 * 3. 음식 종류: K
	 *
	 *
	 * public String [] getTypeArr() { return type == null? new String[] {} :
	 * type.split(""); }
	 */
}
