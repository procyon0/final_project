package org.final_proj.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

// VO 클래스는 테이블 설계를 기준으로 작성하면 된다. (183쪽)
@Data
public class RecipeVO {
	private Long id;
	private String name;
	private String way;
	private String kind;
	private String hashtag;
	private String thumbnail_l;
	private String thumbnail;
	private String ingredient;
	private Long kcal;
	private String manual_1;
	private String photo_1;
	private String manual_2;
	private String photo_2;
	private String manual_3;
	private String photo_3;
	private String manual_4;
	private String photo_4;
	private String manual_5;
	private String photo_5;
}
