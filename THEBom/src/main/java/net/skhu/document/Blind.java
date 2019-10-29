package net.skhu.document;

import java.util.Date;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;
@Document(collection = "blind")
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
	@CreatedDate
	@Field(value="date")
	private Date date;
	@Field(value="processState")
	private int processState;

}
