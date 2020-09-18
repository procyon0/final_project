package org.final_proj.domain;

import java.util.Date;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class CartDTO {
	private String userId;
	private String goodsId;
	private String goodsName;
	private String image;
	private Long amount;
	private Long unitPrice;
	private Long totalPrice;
	private Date insertDate;
	private Date updateDate;
}
