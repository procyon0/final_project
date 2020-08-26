package org.final_proj.domain;

import lombok.Data;

@Data
public class GoodsVO {

	private String goodsId;
	private String goodsName;
	private Long price;
	private String weight;
	private String manufacturer;
	private String category;
	private Long stock;
	private String image;
	private String ex;
}
