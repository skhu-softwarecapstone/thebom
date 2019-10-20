package net.skhu.document;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class Blind {
	
	@Id
	private String id;
	@Field(value="bNo")
	private int bNo;
	@Field(value="name")
	private String name;
	@Field(value="content")
	private String content;
	@Field(value="userid")
	private String userId;
	@Field(value="pNo")
	private int pNo;

}
