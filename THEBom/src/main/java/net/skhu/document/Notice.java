package net.skhu.document;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class Notice {
	@Id
	private String id;
	@Field(value="no")
	private int no;
	@Field(value="title")
	private String title;
	@Field(value="content")
	private String content;
	@Field(value="userId")
	private int userId;
}
