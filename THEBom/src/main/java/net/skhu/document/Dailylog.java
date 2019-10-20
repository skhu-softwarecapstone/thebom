package net.skhu.document;
import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Field;

import lombok.Data;

@Data
public class Dailylog {
	@Id
	private String id;
	@Field(value="dNo")
	private int dNo;
	@Field(value="date")
	private Date date;
	@Field(value="content")
	private String content;
	@Field(value="userId")
	private String userId;
	@Field(value="seniorName")
	private String seniorName;
}
