package net.skhu.document;
import java.util.Date;
import org.springframework.data.annotation.CreatedDate;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
@Document(collection = "notice")
public class Notice {
	@Id
	private String id;
	@Field(value="no")
	private int no;
	@Field(value="title")
	public String title;
	@Field(value="content")
	private String content;
	@Field(value="userId")
	private String userId;
	@CreatedDate
	@Field(value="date")
	private Date createdDate;

}
