package net.skhu.document;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
import lombok.ToString;

@Data
@Document(collection = "sponsor")
public class Sponsor {
	
	@Id
	private String id;
	
	@Field(value="spNo")
	private int spNo;

	@Field(value="point")
	private int point;

	@Field(value="gender")
	private Boolean gender;

	@Field(value="phone")
	private String phone;

	

}
