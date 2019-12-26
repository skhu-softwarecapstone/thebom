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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDNo() {
		return dNo;
	}
	public void setDNo(int dNo) {
		this.dNo = dNo;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSeniorName() {
		return seniorName;
	}
	public void setSeniorName(String seniorName) {
		this.seniorName = seniorName;
	}
	
	
}
