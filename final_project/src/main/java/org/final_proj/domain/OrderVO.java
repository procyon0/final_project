package org.final_proj.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private Long orderId;
	private String userId;
	private String goodsNo;
	private Long amount;
	private Long unitPrice;
	private Long totalPrice;
	private Date orderDate;
	private String delivery;
	
	public OrderVO(Long orderId, String userId, String goodsNo) {
		this.orderId = orderId;
		this.userId = userId;
		this.goodsNo = goodsNo;
	}
	
	
}
